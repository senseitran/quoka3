class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.date :date
      t.string :time
      t.references :space, index: true

      t.timestamps
    end
  end
end
