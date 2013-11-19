class RenameHeadIDinServices < ActiveRecord::Migration
  def change
    rename_column :services, :head_id, :vehicle_id
  end
end
