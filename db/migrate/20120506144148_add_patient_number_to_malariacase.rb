class AddPatientNumberToMalariacase < ActiveRecord::Migration
  def change
    add_column :malariacases, :patient_number, :string

  end
end
