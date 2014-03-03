class AddColumnsToUser < ActiveRecord::Migration
  def change
    add_column :users, :last_name1, :string
    add_column :users, :last_name2, :string
    add_column :users, :approved, :boolean, :default => false, :null => false
    add_index  :users, :approved
  end
end
