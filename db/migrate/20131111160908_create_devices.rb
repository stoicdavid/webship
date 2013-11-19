class CreateDevices < ActiveRecord::Migration
  def change
    create_table :devices do |t|
      t.string :brand
      t.string :key, null: false

      t.timestamps
    end
  end
end
