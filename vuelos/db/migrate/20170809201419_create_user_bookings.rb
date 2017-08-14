class CreateUserBookings < ActiveRecord::Migration[5.0]
  def change
    create_table :user_bookings do |t|
      t.references :user, foreign_key: true
      t.references :booking, foreign_key: true

      t.timestamps
    end
  end
end
