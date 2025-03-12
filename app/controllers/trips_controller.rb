class TripsController < ApplicationController
  before_action :set_trip, only: [:show, :edit, :update]

  def index
    @trips = Trip.all
  end

  def show
    @trip = Trip.find(params[:id])
    @packages = Package.all
    #packages don't belong to a user will get from chatGPT
  end

  def new
    @trip = Trip.new
  end

  def create
    @trip = Trip.new(trip_params)
    # destination = Destination.find(params[:trip][:destination_id])
    # @trip.destination = destination
    @trip.user = current_user
    if @trip.save!
      # CALL THE METHOD FOR CHAT TO GENERATE PACKAGES
      redirect_to trip_path(@trip)
    else
      render :new, status: :unprocessable_entity
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
    params.require(:trip).permit(:start_date, :end_date, :budget, :destination_id)
  end

  def set_trip
    @trip = Trip.find(params[:id])
  end
end
