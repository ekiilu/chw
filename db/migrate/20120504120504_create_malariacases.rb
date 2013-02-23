class CreateMalariacases < ActiveRecord::Migration
  def change
    create_table :malariacases do |t|
      t.integer :patient_id
      t.date :date_diagnosed
      t.integer :communityworker_id

      t.timestamps
    end
  end
end
