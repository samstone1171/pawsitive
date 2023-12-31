class User < ApplicationRecord
  # https://kitt.lewagon.com/db/115136
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :pets, foreign_key: :lister_id
  has_many :rentals, foreign_key: :renter_id
  has_many :rentals_as_lister, through: :pets, source: :rentals
  has_one_attached :photo
end
