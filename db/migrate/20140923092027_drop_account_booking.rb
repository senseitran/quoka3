class DropAccountBooking < ActiveRecord::Migration
  def change
	drop_table :account_bookings
  end
end
