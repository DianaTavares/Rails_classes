class Booking < ApplicationRecord
  belongs_to :flight
  has_many :user_bookings
  has_many :users, through: :user_bookings
end
