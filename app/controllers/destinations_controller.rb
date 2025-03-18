class DestinationsController < ApplicationController
  def index
    @destinations = current_user.destinations # change to current user destinations (has many through)
    @markers = @destinations.geocoded.map do |destination|
      {
        lat: destination.latitude,
        lng: destination.longitude
      }
    end
  end
end
