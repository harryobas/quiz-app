class CreateQuizzes < ActiveRecord::Migration[5.2]
  def change
    create_table :quizzes do |t|
      t.string :quiz_taker
      t.integer :result
      t.references :answer, foreign_key: true

      t.timestamps
    end
  end
end
