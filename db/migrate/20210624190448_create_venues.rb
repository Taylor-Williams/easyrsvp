class CreateVenues < ActiveRecord::Migration[6.1]
  def change
    create_table :venues do |t|
      t.string :name
      t.integer :occupancy
      t.integer :reservations_count
      t.string :location
      t.string :contact
      t.datetime :date

      t.timestamps
    end
  end
end
