require 'rails_helper'

RSpec.describe Quiz, type: :model do

  it 'is valid with valid attributes' do 
    quiz = Quiz.new(quiz_taker: 'foo', answer_one: 3, answer_two: 7, answer_three: 10, result: 20)
    expect(quiz.valid?).to  eq true
  end

end
