FactoryBot.define do
  factory :quiz do
    quiz_taker { "MyString" }
    result { 1 }
    answer { nil }
  end
end
