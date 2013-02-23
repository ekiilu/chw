class CreateMessageparsers < ActiveRecord::Migration
  def change
    create_table :messageparsers do |t|
      t.string :phonenumber
      t.text :text

      t.timestamps
    end
  end
end
