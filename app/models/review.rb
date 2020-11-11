class Review < ApplicationRecord
  belongs_to :restaurant

  validates :content, :rating, presence: true
  vamidates :rating, numericality: true
  validates_inclusion_of :rating, inclusion: 1..10
end
