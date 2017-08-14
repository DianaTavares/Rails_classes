class CreateBookings < ActiveRecord::Migration[5.0]
  def change
    create_table :bookings do |t|
      t.float :total
      t.references :flight, foreign_key: true

      t.timestamps
    end
  end
end
