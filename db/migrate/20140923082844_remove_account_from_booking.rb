class RemoveAccountFromBooking < ActiveRecord::Migration
  def change
    remove_column :bookings, :account_id, :integer
	add_column :bookings, :user_id, :integer    
  end
end
