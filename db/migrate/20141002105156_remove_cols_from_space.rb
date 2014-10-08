class RemoveColsFromSpace < ActiveRecord::Migration
  def change
    remove_column :spaces, :day, :string
    remove_column :spaces, :start_time, :string
  	remove_column :spaces, :end_time, :string
  	add_column :spaces, :mon_start, :string
  	add_column :spaces, :mon_end, :string
  	add_column :spaces, :tue_start, :string
   	add_column :spaces, :tue_end, :string
 	add_column :spaces, :wed_start, :string
   	add_column :spaces, :wed_end, :string
   	add_column :spaces, :thu_start, :string
    add_column :spaces, :thu_end, :string
    add_column :spaces, :fri_start, :string
   	add_column :spaces, :fri_end, :string
 	add_column :spaces, :sat_start, :string
   	add_column :spaces, :sat_end, :string
   	add_column :spaces, :sun_start, :string
    add_column :spaces, :sun_end, :string 	 
  end
end
