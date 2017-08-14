class CreateUserFlights < ActiveRecord::Migration[5.0]
  def change
    create_table :user_flights do |t|
      t.references :user, foreign_key: true
      t.references :flight, foreign_key: true

      t.timestamps
    end
  end
end
