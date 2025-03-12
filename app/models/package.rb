class Package < ApplicationRecord
  belongs_to :flight
  belongs_to :hotel
  has_many :itineraries
end
