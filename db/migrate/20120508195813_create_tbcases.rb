class CreateTbcases < ActiveRecord::Migration
  def change
    create_table :tbcases do |t|
      t.date :date_reported
      t.string :patient_number
      t.string :availability_of_drugs

      t.timestamps
    end
  end
end
