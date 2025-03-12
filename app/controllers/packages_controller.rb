class PackagesController < ApplicationController
  before_action :set_package, only: [:show, :edit, :update]

  def show
  end

  # def edit
    # @trip = Trip.find(params[trip_id])
    # @package.trip = @trip
    # set_package
  # end

  def update
    if @package.update(package_params)
      redirect_to package_path(@package)
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private

  # def package_params
    # params.require(:package).permit(:category, :name)
  # end

  def set_package
    @package = Package.find(params[:id])
  end
end
