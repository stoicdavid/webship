class ChangeAssignments < ActiveRecord::Migration
  def change
    add_column :assignments, :device_id, :integer
    remove_column :assignments, :container_id
    add_column :assignments, :vehicle_id, :integer
  end
end
