class Trip < ApplicationRecord
  belongs_to :user
  belongs_to :package, optional: true
  belongs_to :destination
  # has_many :itineraries
  has_many :journals
  has_one_attached :photo

  def duration
    number_of_days = end_date - start_date
    return number_of_days
  end

  # method to generate optional packages for a trip

  # method to generate itineraries for a trip
  # for each day of the trip call the create_itineraries method

  # def generate_itineraries
  #   # get duration variable from start and end date
  #   duration.times do |i|
  #     activity = create_itineraries(i)
  #     self.itineraries.create(activities: activity)
  #   end
  # end


  # def create_itinerary
  #   client = OpenAI::Client.new
  #   chatgpt_response = client.chat(parameters: {
  #     model: "gpt-4o-mini",
  #     messages: [{ role: "user", content: "Give me activities for day #{i} of a trip to #{destination} I'm staying at #{}.I've already done #{self.itineraries.map {|itinerary| itinerary.activity}} "}]
  #   })
  #   return chatgpt_response["choices"][0]["message"]["content"]
  # end

end
