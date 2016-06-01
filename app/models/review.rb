class Review < ActiveRecord::Base
  belongs_to :restaurant
  validates :rating, :content, :restaurant, presence: true
  validates :rating, numericality: { only_integer: true }
  validates :rating, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 5  }
end

