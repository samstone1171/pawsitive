class Rental < ApplicationRecord
  belongs_to :pet
  belongs_to :renter, class_name: "User"

  validates :status, inclusion: {in: %w(accepted waiting declined)}
end
