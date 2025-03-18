class Journal < ApplicationRecord
  belongs_to :trip
  has_rich_text :content
end
