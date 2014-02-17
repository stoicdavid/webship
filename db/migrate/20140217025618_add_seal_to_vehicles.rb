class AddSealToVehicles < ActiveRecord::Migration
  def change
    add_column :vehicles, :seal_number, :string
  end
end
