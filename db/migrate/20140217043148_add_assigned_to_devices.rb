class AddAssignedToDevices < ActiveRecord::Migration
  def change
    add_column :devices, :assigned, :boolean
  end
end
