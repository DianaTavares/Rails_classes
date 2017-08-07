class CreateCards < ActiveRecord::Migration[5.0]
  def change
    create_table :cards do |t|
      t.string :question
      t.string :answer1
      t.string :answer2
      t.string :answer3
      t.string :correct_answer
      t.references :deck, foreign_key: true

      t.timestamps
    end
  end
end
