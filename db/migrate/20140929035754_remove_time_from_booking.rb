class RemoveTimeFromBooking < ActiveRecord::Migration
  def change
    remove_column :bookings, :time, :string
    add_column :bookings, :start_time, :string
    add_column :bookings, :end_time, :string
  end
end
