class CreateTbdotreports < ActiveRecord::Migration
  def change
    create_table :tbdotreports do |t|

      t.timestamps
    end
  end
end
