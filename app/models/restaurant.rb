class Restaurant < ApplicationRecord
  # Relationship: When a restaurant is destroyed its reviews are also destroyed
  has_many :reviews, dependent: :destroy

  validates :name, :address, :category, presence: true
  validates :category, inclusion: { in: [ "chinese", "italian", "japanese", "french", "belgian" ] }
end
