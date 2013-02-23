class CreateVillageworkers < ActiveRecord::Migration
  def change
    create_table :villageworkers do |t|
      t.string :firstname
      t.string :lastname
      t.string :middlename
      t.string :phonenumber
      t.string :nationalid
      t.string :male
      t.integer :village

      t.timestamps
    end
  end
end
