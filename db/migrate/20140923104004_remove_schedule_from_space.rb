class RemoveScheduleFromSpace < ActiveRecord::Migration
  def change
    remove_column :spaces, :schedule, :string
  end
end
