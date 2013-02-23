class AddLocationIdToTbcases < ActiveRecord::Migration
  def change
    add_column :tbcases, :location_id, :integer

  end
end
