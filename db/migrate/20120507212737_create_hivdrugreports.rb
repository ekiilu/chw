class CreateHivdrugreports < ActiveRecord::Migration
  def change
    create_table :hivdrugreports do |t|

      t.timestamps
    end
  end
end
