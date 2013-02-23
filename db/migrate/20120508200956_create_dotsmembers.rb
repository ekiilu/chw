class CreateDotsmembers < ActiveRecord::Migration
  def change
    create_table :dotsmembers do |t|
      t.date :date_reported
      t.string :patient_number
      t.string :patient_phone
      t.string :status

      t.timestamps
    end
  end
end
