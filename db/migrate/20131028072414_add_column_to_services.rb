class AddColumnToServices < ActiveRecord::Migration
  def change
    add_column :services, :latitude_dest, :float
    add_column :services, :longitude_dest, :float
  end
end
