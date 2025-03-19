class Journal < ApplicationRecord
  belongs_to :trip
  has_rich_text :content
  # has_many_attached :photos
end
