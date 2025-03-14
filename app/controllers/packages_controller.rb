class PackagesController < ApplicationController
  before_action :set_package, only: [:show]

  def show
  end

  private

  def package_params
    params.require(:package).permit(:category, :name, photos: [])
  end

  def set_package
    @package = Package.find(params[:id])
  end

end
