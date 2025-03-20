class TripsController < ApplicationController
  before_action :set_trip, only: [:show, :edit, :update]

  def index
    @trips = current_user.trips
    @destinations = current_user.destinations # change to current user destinations (has many through)
    @markers = @destinations.geocoded.map do |destination|
      {
        lat: destination.latitude,
        lng: destination.longitude
      }
    end
  end

  def show
    @trip = Trip.find(params[:id])
    @trip_packages = @trip.packages
    @trip_journals = @trip.journals.where.not(content: nil)
  end

  def new
    @trip = Trip.new
  end

  def create
    @trip = current_user.trips.new(trip_params)
    destination = Destination.find(params[:trip][:destination_id])
    @trip.destination = destination
    @trip.user = current_user
    if @trip.save!
      GeneratePackagesJob.perform_later(@trip)
      @trip.duration.to_i.times do |i|
        @trip.journals.create!(date: @trip.start_date + i, title: "Day #{i + 1}")
      end
      Turbo::StreamsChannel.broadcast_replace_to(
        "trip_#{@trip.id}_packages",
        target: "trip_packages",
        partial: "trips/packages",
        locals: { trip: @trip }
      )
      redirect_to trip_path(@trip)
    else
      render :new, status: :unproccessable_entity
    end
  end

  def edit
  end

  def update
    if @trip.update(trip_params)
      redirect_to trip_path(@trip)
    else
      render :edit
    end
  end

  private

  def trip_params
    params.require(:trip).permit(:start_date, :end_date, :budget, :destination_id, :category, photos: [])
  end

  def set_trip
    @trip = Trip.find(params[:id])
  end

end
