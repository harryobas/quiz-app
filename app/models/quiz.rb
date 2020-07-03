class Quiz < ApplicationRecord
  has_many :answers

  before_validation do 
    answers = [self.answer_one, self.answer_two, self.answer_three]
    self.result = answers.map{|ans| ANSWER_SCORES[ans]}.reduce(&:+)
  end 

  ANSWER_SCORES = {
    "SVN" => 0,
    "GIT" => 10,
    "CVS" => -5,
    "Mercurial" => 5,
    "Ehh, what?" => 0,
    "Ceiling cat" => 10, 
    "Invisible bike cat" => 5,
    "Octocat" => 12,
    "Monorail cat" => 2,
    "Diamond" => 5,
    "Ruby" => 10,
    "Kryptonite" => 10,
    "Emerald" => -5
  }

  validates :quiz_taker, presence: true
  validates :result, presence: true 
  validates :answer_one, presence: true 
  validates :answer_two, presence: true 
  validates :answer_three, presence: true 


end
