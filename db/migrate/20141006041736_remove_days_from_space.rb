class RemoveDaysFromSpace < ActiveRecord::Migration
  def change
    remove_column :spaces, :mon_start, :string
    remove_column :spaces, :tue_start, :string
    remove_column :spaces, :wed_start, :string
    remove_column :spaces, :thu_start, :string
    remove_column :spaces, :fri_start, :string
    remove_column :spaces, :sat_start, :string
    remove_column :spaces, :sun_start, :string
    remove_column :spaces, :mon_end, :string
    remove_column :spaces, :tue_end, :string
    remove_column :spaces, :wed_end, :string
    remove_column :spaces, :thu_end, :string
    remove_column :spaces, :fri_end, :string
    remove_column :spaces, :sat_end, :string
    remove_column :spaces, :sun_end, :string
  end
end
