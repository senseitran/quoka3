class AddColsToBooking < ActiveRecord::Migration
  def change
    add_column :bookings, :self_booking, :boolean
  end
end
