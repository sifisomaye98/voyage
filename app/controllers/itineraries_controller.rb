class ItinerariesController < ApplicationController
  before_action :set_itinerary, only: %i[show edit]

  def index
    @trip = Trip.find(params[:trip_id])
    @itineraries = @trip.itineraries
  end

  def show

  end

  def edit
  end

  def new
    @trip = Trip.find(params[:trip_id])
    @trip = itinerary.new
  end

  def create
    @itinerary = Itinerary.new(itinerary_params)
    @itinerary.trip = @trip
    if @itinerary.save
      redirect_to trip_path(@trip)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def set_itinerary
    @itinerary = Itinerary.find(params[:id])
  end
end
