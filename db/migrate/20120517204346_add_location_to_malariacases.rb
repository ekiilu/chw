class AddLocationToMalariacases < ActiveRecord::Migration
  def change
    add_column :malariacases, :location_id, :integer

  end
end
