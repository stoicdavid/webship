class ChangeAssingments < ActiveRecord::Migration
  def change
    change_table :assignments do |t|
      t.references :shipment, index: true
    end
    
    remove_column :shipments, :shipment_id
  end
end
