class AddLocationToVillageworker < ActiveRecord::Migration
  def change
    add_column :villageworkers, :location_id, :integer

  end
end
