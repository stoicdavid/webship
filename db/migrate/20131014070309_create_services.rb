class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.string :shipment
      t.timestamp :departure_date
      t.timestamp :arrival_date
      t.timestamp :release_date
      t.integer :status
      t.float :latitude
      t.float :longitude
      t.references :head, index: true
      t.integer :departure_id
      t.integer :arrival_id

      t.timestamps
    end
  end
end
