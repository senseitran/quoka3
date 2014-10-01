class RemoveAccountFromSpace < ActiveRecord::Migration
  def change
    remove_column :spaces, :account_id, :integer
    add_column :spaces, :user_id, :integer
  end
end
