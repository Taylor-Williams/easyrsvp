class CreateReservations < ActiveRecord::Migration[6.1]
  def change
    create_table :reservations do |t|
      t.integer :venue_id
      t.string :res_name
      t.string :phone_number

      t.timestamps
    end
  end
end
