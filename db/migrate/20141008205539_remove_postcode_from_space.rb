class RemovePostcodeFromSpace < ActiveRecord::Migration
  def change
    remove_column :spaces, :postcode, :string
  end
end
