class CreateAccountBookings < ActiveRecord::Migration
  def change
    create_table :account_bookings do |t|
      t.references :account, index: true
      t.references :booking, index: true

      t.timestamps
    end
  end
end
