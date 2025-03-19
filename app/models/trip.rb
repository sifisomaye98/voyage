class Trip < ApplicationRecord
  belongs_to :user
  belongs_to :package, optional: true
  has_many :packages
  belongs_to :destination

  # has_many :itineraries
  has_many :journals
  has_many_attached :photos

  def duration
    number_of_days = end_date - start_date
    return number_of_days
  end

  # method to generate optional packages for a trip
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
      messages: [{ role: "user", content: "Please generate 1 travel package for  #{self.category} to #{destination.name}
        with a budget of #{budget} from #{start_date} to #{end_date}. The packages must be specific to #{self.category} trips,
        and they must be related to #{destination.name}. Do not include any packages for other categories or destinations.
        Don't mention the dates, category, and total budget at the beginning of your answer.Just the package details. Make the description short"}]
    })
    response_text = chatgpt_response["choices"][0]["message"]["content"]
    # descriptions = response_text.scan(/### Package \d+:.*?(?=\n{2,}### Package \d+:|\z)/m)
    # descriptions = descriptions.map { |desc| desc.sub(/---.*/m, "") }
    # packages = []
    # descriptions.each do |description|
    package = Package.create!(
      name: "#{self.category} package to #{destination.name}",
      description: response_text,
      trip_id: self.id
    )
    # package.set_photo(self)
    # packages << package

  end
end
