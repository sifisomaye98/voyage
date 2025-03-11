class PackagesController < ApplicationController
  def show
    @package = Package.find(params[:id])
  end

  def edit
    @package = Package.find(params[:id])
  end

  def update
    @package = Package.find(params[:id])
    @package.update(package_params)

    redirect_to package_path(@package)
  end
end
