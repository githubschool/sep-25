class Book < ApplicationRecord
  validates :title, presence: true
  # validates :year_published, numericality: { only_integer: true }
end
