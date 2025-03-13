class TripsController < ApplicationController
  before_action :set_trip, only: [:show, :edit, :update]

  def index
    @trips = Trip.all
  end

  def show
    # Initialize OpenAI client and get response
    client = OpenAI::Client.new
    chatgpt_response = client.chat(parameters: {
      model: "gpt-4o-mini",
      messages: [{ role: "user", content: "Give me 5 travel packages to different cities for each #{Package.categories} ."}]
    })

    # Check if response is correctly formatted
    if chatgpt_response["choices"].present?
      @content = chatgpt_response["choices"][0]["message"]["content"]
    else
      @content = "No content available from the API."
    end
  end

  def new
    @trip = Trip.new
  end

  def create
    @trip = Trip.new(trip_params)
    # destination = Destination.find(params[:trip][:destination_id])
    # @trip.destination = destination
    @trip.user = current_user
    if @trip.save!
      # CALL THE METHOD FOR CHAT TO GENERATE PACKAGES
      redirect_to trip_path(@trip)
    else
      render :new, status: :unprocessable_entity
    end
  end

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
    params.require(:trip).permit(:start_date, :end_date, :budget, :destination_id)
  end

  def set_trip
    @trip = Trip.find(params[:id])
  end
end
