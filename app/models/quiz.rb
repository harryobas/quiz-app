class Quiz < ApplicationRecord
  has_many :answers

  validates :quiz_taker, presence: true
  validates :result, presence: true 
  validates :answer_one, presence: true 
  validates :answer_two, presence: true 
  validates :answer_three, presence: true 

end
