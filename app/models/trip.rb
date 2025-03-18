class Trip < ApplicationRecord
  belongs_to :user
  belongs_to :package, optional: true
  belongs_to :destination
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

  def generate_packages
    client = OpenAI::Client.new
    chatgpt_response = client.chat(parameters: {
      model: "gpt-4o-mini",
      messages: [{ role: "user", content: "Please generate 2 travel packages for  #{self.category} to #{destination.name} with a budget of #{budget} from #{start_date} to #{end_date}. The packages must be specific to #{self.category} trips, and they must be related to #{destination.name}. Do not include any packages for other categories or destinations."}]
    })
    response_text = chatgpt_response["choices"][0]["message"]["content"]
    descriptions = response_text.scan(/### Package \d+:.*?(?=\n{2,}### Package \d+:|\z)/m)
    descriptions = descriptions.map { |desc| desc.sub(/---.*/m, "") }
    packages = []
    descriptions.each do |description|
      package = Package.create!(
        name: "#{self.category} package to #{destination.name}",
        description: description
      )
      package.set_photo(self)
      packages << package

    end
    packages

  end
  # def create_itinerary
  #   client = OpenAI::Client.new
  #   chatgpt_response = client.chat(parameters: {
  #     model: "gpt-4o-mini",
  #     messages: [{ role: "user", content: "Give me activities for day #{i} of a trip to #{destination} I'm staying at #{}.I've already done #{self.itineraries.map {|itinerary| itinerary.activity}} "}]
  #   })
  #   return chatgpt_response["choices"][0]["message"]["content"]
  # end

end
