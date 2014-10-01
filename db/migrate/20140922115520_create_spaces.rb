class CreateSpaces < ActiveRecord::Migration
  def change
    create_table :spaces do |t|
      t.string :number
      t.string :street
      t.string :suburb
      t.string :postcode
      t.string :state
      t.string :country
      t.string :type
      t.string :schedule
      t.string :status
      t.references :account, index: true

      t.timestamps
    end
  end
end
