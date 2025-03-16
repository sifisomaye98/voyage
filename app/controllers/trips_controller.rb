require "open-uri"
class TripsController < ApplicationController
  before_action :set_trip, only: [:show, :edit, :update]

  def index
    @trips = Trip.all
  end

  def show
    @trip = Trip.find(params[:id])
    @content = Package.new.content(@trip)
    @package_photo = Package.new.set_photo(@trip)
    @packages = Package.all
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
      # Package.categories.each do |cat|
      #   Package.find_or_create(name: "#{@trip.destination} #{cat}")
      # end
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
