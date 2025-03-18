class PackagesController < ApplicationController
  # before_action :set_package, only: [:show]

  def show
  end

  # def edit
    # @trip = Trip.find(params[trip_id])
    # @package.trip = @trip
    # set_package
  # end

  def set_package
    trip = Trip.find(params[:trip_id])
    @package = Package.find(params[:id])
    trip.package = @package
    if trip.save
      redirect_to trip_path(trip)
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private

  # def package_params
  #   params.require(:package).permit(:description, :name, :photo)
  # end

  # def set_package
  #   @package = Package.find(params[:id])
  # end

end
