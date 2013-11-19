class CreateVehicles < ActiveRecord::Migration
  def change
    create_table :vehicles do |t|
      t.string :plate
      t.string :economic
      t.string :container_type
      t.string :color
      t.string :features
      t.string :brand
      t.integer :year
      t.integer  :vehicle_type, default: 1
      t.references :line,  index: true
      t.timestamps
    end
  end
end
