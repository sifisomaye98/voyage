class DestinationController < ApplicationController
  def index
    @destinations = Destination.all # change to current user destinations (has many through)
    @markers = @destinations.geocoded.map do |destination|
      {
        lat: destination.latitude,
        lng: destination.longitude
      }
    end

  end

end
