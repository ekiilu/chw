class CreateHivgenderreports < ActiveRecord::Migration
  def change
    create_table :hivgenderreports do |t|

      t.timestamps
    end
  end
end
