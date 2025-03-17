class DestinationController < ApplicationController
  def index
    @destinations = Destination.all
  end

end
