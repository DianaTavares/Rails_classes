class CreateFlights < ActiveRecord::Migration[5.0]
  def change
    create_table :flights do |t|
      t.datetime :depart
      t.string :from
      t.string :to
      t.string :duration
      t.float :cost
      t.integer :available_seats

      t.timestamps
    end
  end
end
