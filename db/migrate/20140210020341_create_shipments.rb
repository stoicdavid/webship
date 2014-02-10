class CreateShipments < ActiveRecord::Migration
  def change
    create_table :shipments do |t|
      t.string :shipment
      t.references :service, index: true

      t.timestamps
    end
  end
end
