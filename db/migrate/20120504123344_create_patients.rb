class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.string :firstname
      t.string :middlename
      t.string :lastname
      t.date :year_of_birth
      t.integer :communityworker_id

      t.timestamps
    end
  end
end
