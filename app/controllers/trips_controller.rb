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
    @trip_packages = params[:trip_packages]&.map { |package_id| Package.find(package_id) } || []
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
      @trip_packages = @trip.generate_packages
    # raise
      # CALL THE METHOD FOR CHAT TO GENERATE PACKAGES
      # Package.categories.each do |cat|
      #   Package.find_or_create(name: "#{@trip.destination} #{cat}")
      # end
      redirect_to trip_path(@trip, trip_packages: @trip_packages)
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
    params.require(:trip).permit(:start_date, :end_date, :budget, :destination_id, :category)
  end

  def set_trip
    @trip = Trip.find(params[:id])
  end

end
