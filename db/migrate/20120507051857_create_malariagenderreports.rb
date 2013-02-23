class CreateMalariagenderreports < ActiveRecord::Migration
  def change
    create_table :malariagenderreports do |t|

      t.timestamps
    end
  end
end
