class AddColumnToLines < ActiveRecord::Migration
  def change
    add_column :lines, :cedis_id, :integer
    add_column :lines, :status, :integer
  end
end
