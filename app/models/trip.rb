class Trip < ApplicationRecord
  belongs_to :user
  belongs_to :package, optional: true
  belongs_to :destination
  has_many :itineraries
end
