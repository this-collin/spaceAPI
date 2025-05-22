class CreateQuestions < ActiveRecord::Migration[8.0]
  def change
    create_table :questions do |t|
      t.string :difficulty
      t.string :category
      t.string :question
      t.string :correct_answer
      t.string :incorrect_answers, array: true, default: []

      t.timestamps
    end
  end
end
