class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @trips = Trip.all
    @trip = Trip.new
  end
end
