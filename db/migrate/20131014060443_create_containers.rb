class CreateContainers < ActiveRecord::Migration
  def change
    create_table :containers do |t|
      t.string :plate
      t.integer :economic
      t.string :type
      t.string :color
      t.string :features
      t.references :line,  index: true

      t.timestamps
    end
  end
end
