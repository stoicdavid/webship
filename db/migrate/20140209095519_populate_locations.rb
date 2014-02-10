class PopulateLocations < ActiveRecord::Migration
  def change
    sql = ""
    source = File.new("./config/cat_locations.sql", "r")
    while (line = source.gets)
      sql << line
    end
    source.close
    execute sql
  end
end
