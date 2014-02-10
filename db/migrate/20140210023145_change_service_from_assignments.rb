class ChangeServiceFromAssignments < ActiveRecord::Migration
  def change
    change_table :shipments do |t|
      t.references :shipment, index: true
    end
    
    remove_column :assignments, :service_id
  end
end
