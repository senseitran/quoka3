class RemoveDaysFromSchedule < ActiveRecord::Migration
  def change
    remove_column :schedules, :start_time, :string
    remove_column :schedules, :end_time, :string
    remove_column :schedules, :day, :string
    add_column :schedules, :tue_start, :string
    add_column :schedules, :wed_start, :string
    add_column :schedules, :thu_start, :string
    add_column :schedules, :fri_start, :string
    add_column :schedules, :sat_start, :string
    add_column :schedules, :sun_start, :string
    add_column :schedules, :mon_end, :string
    add_column :schedules, :tue_end, :string
    add_column :schedules, :wed_end, :string
    add_column :schedules, :thu_end, :string
    add_column :schedules, :fri_end, :string
    add_column :schedules, :sat_end, :string
    add_column :schedules, :sun_end, :string
  end
end
