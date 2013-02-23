class AddLocationIdToHivcases < ActiveRecord::Migration
  def change
    add_column :hivcases, :location_id, :integer

  end
end
