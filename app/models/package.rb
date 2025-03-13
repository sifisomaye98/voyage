class Package < ApplicationRecord
  belongs_to :flight
  belongs_to :hotel

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

  # def content
  #   client = OpenAI::Client.new
  #   chatgpt_response = client.chat(parameters: {
  #     model: "gpt-4o-mini",
  #     messages: [{ role: "user", content: "Give me 5 travel packages to different cities for each #{Package.categories}."}]
  #   })
  #   return chatgpt_response["choices"][0]["message"]["content"]
  # end
end
