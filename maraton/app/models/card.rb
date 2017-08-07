class Card < ApplicationRecord
  belongs_to :deck
  validates :question, :answer1, :answer2, :answer3, :correct_answer, presence: true
end
