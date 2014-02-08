class AddColumnToVehicles < ActiveRecord::Migration
  def change
    add_column :vehicles, :service_id, :integer
  end
end
