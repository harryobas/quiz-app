class AddAnswerOneToQuizzes < ActiveRecord::Migration[5.2]
  def change
    add_column :quizzes, :answer_one, :string
  end
end
