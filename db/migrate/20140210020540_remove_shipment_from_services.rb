class RemoveShipmentFromServices < ActiveRecord::Migration
  def change
     remove_column :services, :shipment
  end
end
