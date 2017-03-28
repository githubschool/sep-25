class Book < ApplicationRecord
  validates :title, presence: true
  # validates :year_published, numericality: { only_integer: true }

  def old?
    return false unless year_published
    if
      Date.current.year - year_published.to_i > 25
      return true
    else
      return false
    end
  end
end
