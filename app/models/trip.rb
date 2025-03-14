class Trip < ApplicationRecord
  belongs_to :user
  belongs_to :package, optional: true
  belongs_to :destination
  has_many :itineraries
  has_one_attached :photo

  enum category: {
    backpacker: 1,
    luxury_traveler: 2,
    adventure_seeker: 3,
    cultural_explorer: 4,
    family_vacationer: 5
  }
    def self.humanized_categories
      {
        backpacker: "Backpacker",
        luxury_traveler: "Luxury Traveller",
        adventure_seeker: "Adventure Seeker",
        cultural_explorer: "Cultural Explorer",
        family_vacationer: "Family Vacationer"
      }
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
