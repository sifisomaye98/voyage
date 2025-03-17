class JournalsController < ApplicationController
  def index
    @trip = Trip.find(params[:trip_id])
    @journals = @trip.journals
  end

  def show
    @journal = Journal.find(params[:id])
  end

  def update
    @journal = Journal.find(params[:id])
    @journal.update(journal_params)
    # No need for app/views/restaurants/update.html.erb
    redirect_to journal_path(@journal)
  end

  def create
    @journal = Journal.new(journal_params)
    @journal.save
  end

  private

  def journal_params
    params.require(:journal).permit(:title, :date, :content)
  end
end
