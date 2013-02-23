class CreateCommunityHealthWorkers < ActiveRecord::Migration
  def change
    create_table :community_health_workers do |t|
      t.string :firstname
      t.string :lastname
      t.string :middlename
      t.string :phonenumber
      t.string :nationalid
      t.string :gender
      t.integer :village

      t.timestamps
    end
  end
end
