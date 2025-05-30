class Restaurant < ApplicationRecord
  restaurant_types = ["chinese", "italian", "japanese", "french", "belgian"]
  has_many :reviews, dependent: :destroy

  validates :name, :address, :category, presence: true
  validates :category, inclusion: { in: restaurant_types, message: "%{value} is not a valid size" }
end
