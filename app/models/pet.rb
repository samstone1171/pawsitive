class Pet < ApplicationRecord
  belongs_to :lister, class_name: "User"
  has_many :rentals
  has_one_attached :photo


  validates :species, presence: true
  validates :price_per_day, presence: true
  validates :description, presence: true
end
