class CreateCalls < ActiveRecord::Migration[5.2]
  def change
    create_table :calls do |t|
      t.integer :from_device_id
      t.integer :to_device_id
      t.datetime :started_at
      t.datetime :ended_at

      t.timestamps
    end
  end
end
