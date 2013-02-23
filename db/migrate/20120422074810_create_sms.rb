class CreateSms < ActiveRecord::Migration
  def change
    create_table :sms do |t|
      t.string :phone
      t.string :text

      t.timestamps
    end
  end
end
