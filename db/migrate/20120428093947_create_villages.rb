class CreateVillages < ActiveRecord::Migration
  def change
    create_table :villages do |t|
      t.string :name
      t.string :ward
      t.string :county

      t.timestamps
    end
  end
end
