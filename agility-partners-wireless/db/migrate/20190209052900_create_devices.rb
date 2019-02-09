class CreateDevices < ActiveRecord::Migration[5.2]
  def change
    create_table :devices do |t|
      t.string :phone_number
      t.boolean :active
      t.integer :account_id
      t.integer :model_id

      t.timestamps
    end
  end
end
