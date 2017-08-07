class CreateGames < ActiveRecord::Migration[5.0]
  def change
    create_table :games do |t|
      t.integer :correct_answer
      t.references :user, foreign_key: true
      t.references :deck, foreign_key: true

      t.timestamps
    end
  end
end
