class AddLinesToAssignments < ActiveRecord::Migration
  def change
    add_column :assignments, :line_id, :integer
  end
end
