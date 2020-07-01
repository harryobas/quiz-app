module QuizWizard
    module Quiz
        STEPS = %w(step1 step2 step3 step4).freeze

        class Base
            include ActiveModel::Model
            attr_accessor :quiz

            delegate *::Quiz.attribute_names.map { |attr| [attr, "#{attr}="] }.flatten, to: :quiz

            def initialize(quiz_attributes)
                @quiz = ::Quiz.new(quiz_attributes)
            end
        end
        class Step1 < Base
            validates :quiz_taker, presence: true
        end
        class Step2 < Base
          validates :answer_one, presence: true
        end
        class Step3 < Base
          validates :answer_two, presence: true
        end
        class Step4 < Base 
          validates :answer_three, presence: true 
        end
      end
    end
