class PackagesController < ApplicationController
  def show
    @package = Package.find(params[:id])
  end
end

def edit
  @package = Package.find(params[:id])
end
