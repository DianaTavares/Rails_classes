class Deck < ApplicationRecord
  has_many :games
  has_many :cards
  validates :name, presence: true 
end
