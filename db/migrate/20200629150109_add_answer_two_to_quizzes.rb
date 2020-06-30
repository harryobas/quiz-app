class AddAnswerTwoToQuizzes < ActiveRecord::Migration[5.2]
  def change
    add_column :quizzes, :answer_two, :string
  end
end
