class PackagesController < ApplicationController
  before_action :set_package, only: [:show, :edit, :update]
  
  def show
  end

  def edit
  end

  def update
    if @package.update(package_params)
      redirect_to package_path(@package)
    else
      render :edit
    end
  end

  private

  def package_params
    params.require(:package).permit(:category, :name)
  end

  def set_package
    @package = Package.find(params[:id])
  end
end
