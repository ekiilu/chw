class CreateHivlocationreports < ActiveRecord::Migration
  def change
    create_table :hivlocationreports do |t|

      t.timestamps
    end
  end
end
