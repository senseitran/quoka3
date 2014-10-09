class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.string :status
      t.integer :seeker_id
      t.integer :owner_id

      t.timestamps
    end
  end
end
