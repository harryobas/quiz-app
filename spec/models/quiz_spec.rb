require 'rails_helper'

RSpec.describe Quiz, type: :model do
  it { is_expected.to validate_presence_of(:quiz_taker) }
  it { is_expected.to validate_presence_of(:result) }
  it { is_expected.to validate_presence_of(:answer_one) }
  it { is_expected.to validate_presence_of(:answer_two) }
  it { is_expected.to validate_presence_of(:answer_three) }

end
