class AddCedisToLocations < ActiveRecord::Migration
  def change
    add_column :locations, :cedis, :string
    add_column :users, :name, :string
    add_column :users, :last_name, :string
  end
end
