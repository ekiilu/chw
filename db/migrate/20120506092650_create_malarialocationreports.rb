class CreateMalarialocationreports < ActiveRecord::Migration
  def change
    create_table :malarialocationreports do |t|

      t.timestamps
    end
  end
end
