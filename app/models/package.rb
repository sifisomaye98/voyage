class Package < ApplicationRecord
  belongs_to :flight, optional: true
  belongs_to :hotel, optional: true
  has_many_attached :photos

end
