class AddDateAddedToPatients < ActiveRecord::Migration
  def change
    add_column :patients, :date_added, :date

  end
end
