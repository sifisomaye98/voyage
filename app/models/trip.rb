class Trip < ApplicationRecord
  belongs_to :user
  belongs_to :package, optional: true
  has_many :packages
  belongs_to :destination
  # has_many :itineraries
  has_many :journals
  has_one_attached :photo

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

end
