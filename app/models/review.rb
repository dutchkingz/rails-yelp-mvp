class Review < ApplicationRecord
  belongs_to :restaurant

  validates :content, :rating, presence: true
  # validates :rating, inclusion: { in: [ 1, 2, 3, 4, 5 ] }
  validates :rating, numericality: {
    only_integer: true,
    greater_than_or_equal_to: 0,
    less_than_or_equal_to: 5
  }
end
