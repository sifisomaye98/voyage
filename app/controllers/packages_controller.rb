class PackagesController < ApplicationController

  def show
  end


  def set_package
    trip = Trip.find(params[:trip_id])
    @package = Package.find(params[:id])
    trip.packages.update_all(selected: false)
    @package.update!(selected: true)
    trip.update!(package_id: @package.id)
    if trip.save
      redirect_to trip_path(trip), notice: "Package selected successfully"
    else
      render :edit, status: :unprocessable_entity
    end
  end
end
