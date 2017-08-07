class User < ApplicationRecord
  has_many :games
  validates :name, :email, :password, presence: true
  validates :email, uniqueness: true
end
