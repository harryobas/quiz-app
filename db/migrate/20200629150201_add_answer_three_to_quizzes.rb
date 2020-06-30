class AddAnswerThreeToQuizzes < ActiveRecord::Migration[5.2]
  def change
    add_column :quizzes, :answer_three, :string
  end
end
