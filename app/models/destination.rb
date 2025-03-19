class Destination < ApplicationRecord
  has_many :trips
  geocoded_by :name
  after_create :geocode, if: :will_save_change_to_name?
end
