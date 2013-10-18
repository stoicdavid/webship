class CreateDistricts < ActiveRecord::Migration
  def change
    create_table :districts do |t|
      t.references :state, index: true
      t.string :name

      t.timestamps
    end
  end
end
