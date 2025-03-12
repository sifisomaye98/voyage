class ItinerariesController < ApplicationController
  before_action :set_itinerary, only: %i[show edit]

  def index
    @package = Package.find(params[:package_id])
    @itineraries = @package.itineraries
  end

  def show

  end

  def edit
  end

  def new
    @package = Package.find(params[:package_id])
    @package = itinerary.new
  end

  def create
    @itinerary = Itinerary.new(itinerary_params)
    @itinerary.package = @package
    if @itinerary.save
      redirect_to package_path(@package)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def set_itinerary
    @itinerary = Itinerary.find(params[:id])
  end
end
