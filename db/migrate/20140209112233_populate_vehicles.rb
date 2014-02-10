class PopulateVehicles < ActiveRecord::Migration
  def change
    sql = ""
    source = File.new("./config/vehicles.sql", "r")
    while (line = source.gets)
      sql << line
    end
    source.close
    execute sql
  end
end
