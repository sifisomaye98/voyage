class TripsController < ApplicationController
  before_action :set_trip, only: [:show, :edit, :update]

  def index
    @trips = Trip.all
  end

  def show
    @trip = Trip.find(params[:id])
    client = OpenAI::Client.new
    chatgpt_response = client.chat(parameters: {
      model: "gpt-4o-mini",
      messages: [{ role: "user", content: "Give me a travel package for #{@trip.category} trip to #{@trip.destination.name} and a budget of #{@trip.budget}. Give me only the description of the packages, without any of your own answer like 'Here is a travel package."}]
    })
    @content = chatgpt_response["choices"][0]["message"]["content"]
    @packages = Package.all
    #packages don't belong to a user will get from chatGPT
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
      # Package.categories.each do |cat|
      #   Package.find_or_create(name: "#{@trip.destination} #{cat}")
      # end
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
    params.require(:trip).permit(:start_date, :end_date, :budget, :destination_id, :photo)
  end

  def set_trip
    @trip = Trip.find(params[:id])
  end
end
