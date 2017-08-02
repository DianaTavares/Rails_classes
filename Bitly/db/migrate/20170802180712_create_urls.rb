class CreateUrls < ActiveRecord::Migration[5.0]
  def change
    create_table :urls do |t|
      t.string :large
      t.string :short
      t.integer :counter, :default => 0

      t.timestamps
    end
  end
end
