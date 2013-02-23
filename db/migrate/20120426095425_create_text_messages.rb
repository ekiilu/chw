class CreateTextMessages < ActiveRecord::Migration
  def change
    create_table :text_messages do |t|
      t.string :phone
      t.text :text

      t.timestamps
    end
  end
end
