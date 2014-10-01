class RemoveStatusFromSpace < ActiveRecord::Migration
  def change
    remove_column :spaces, :status, :string
  end
end
