class TripsController < ApplicationController
  before_action :set_trip, only: [:edit, :update]
  def edit
  end

  def update
    if @trip.update(trip_params)
      redirect_to trip_path(@trip)
    else
      render :edit
    end
  end

  private

  def trip_params
    params.require(:trip).permit(:start_date, :end_date, :budget)
  end

  def set_trip
    @trip = Trip.find(params[:id])
  end
end
