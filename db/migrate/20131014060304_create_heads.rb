class CreateHeads < ActiveRecord::Migration
  def change
    create_table :heads do |t|
      t.string :plate
      t.integer :economic
      t.string :brand
      t.string :color
      t.integer :year
      t.references :line,  index: true

      t.timestamps
    end
  end
end
