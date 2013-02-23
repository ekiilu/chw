class CreateHivcases < ActiveRecord::Migration
  def change
    create_table :hivcases do |t|
      t.date :date_diagnosed
      t.string :patient_number
      t.string :availability_of_contraceptives
      t.string :availability_of_drugs

      t.timestamps
    end
  end
end
