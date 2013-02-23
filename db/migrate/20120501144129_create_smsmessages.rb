class CreateSmsmessages < ActiveRecord::Migration
  def change
    create_table :smsmessages do |t|
      t.string :phone
      t.text :message

      t.timestamps
    end
  end
end
