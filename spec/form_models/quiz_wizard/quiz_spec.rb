require 'rails_helper'

RSpec.describe QuizWizard::Quiz::Base, type: :model do
  subject { QuizWizard::Quiz::Base.new({ quiz_taker: 'foo'}) }

  describe '#quiz' do
    it 'returns the Quiz instance' do
      expect(subject.quiz).to be_a(Quiz)
    end
  end

  describe 'delegate quiz attributes' do
    it 'delegates the quiz attributes to the quiz instance' do
      subject.quiz_taker = 'Foo'
      subject.answer_one = 'Bar'
      expect(subject.quiz.quiz_taker).to eq('Foo')
      expect(subject.quiz.answer_one).to eq('Bar')
    end
  end

end

RSpec.describe QuizWizard::Quiz::Step1, type: :model do
    subject { QuizWizard::Quiz::Step1.new({ answer_one: 'bar' }) }
    it { is_expected.to validate_presence_of(:quiz_taker) }
  end