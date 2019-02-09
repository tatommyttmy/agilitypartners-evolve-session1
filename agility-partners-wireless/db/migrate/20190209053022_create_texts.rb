class CreateTexts < ActiveRecord::Migration[5.2]
  def change
    create_table :texts do |t|
      t.integer :from_device_id
      t.integer :to_device_id
      t.datetime :sent_at
      t.string :message

      t.timestamps
    end
  end
end
