class Recommendation < ApplicationRecord
  has_one_attached :photo

  enum category: {
    foodie: 1,
    vegan: 2,
    vegetarian: 3,
    meat_eater: 4,
    food_tourist: 5
  }
  def self.humanized_categories
    {
      foodie: "Foodie",
      vegan: "Luxury Traveller",
      vegetarian: "Adventure Seeker",
      meat_eater: "Cultural Explorer",
      food_tourist: "Food_tourist"
    }
  end
end
