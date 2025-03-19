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
    # @trip_description = extract_packages(@trip.description) #formatinng the packages
    # @trip_packages = params[:trip_packages].map { |package_id| Package.find(package_id) }
  end

  def new
    @trip = Trip.new
  end

  def create
    @trip = Trip.new(trip_params)
    destination = Destination.find(params[:trip][:destination_id])
    @trip.destination = destination
    @trip.user = current_user

    if @trip.save!


      # @trip_packages = []
      2.times do
        @trip.generate_packages
      end
      broadcast_replace_to(
        "trip_#{id}",
        partial: "trips/trip",
        locals: { trip: self },
        target: "trip_#{id}"
      )
    end

      #### make journals here
      (@trip.end_date - @trip.start_date).to_i.times do |i|
        @trip.journals.create!(date: @trip.start_date + i, title: "Day #{i + 1}")
      end
      redirect_to trip_path(@trip)
    else
      redirect_to root_path
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
    params.require(:trip).permit(:start_date, :end_date, :budget, :destination_id, :category)
  end

  def set_trip
    @trip = Trip.find(params[:id])
  end

end
