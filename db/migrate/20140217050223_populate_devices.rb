class PopulateDevices < ActiveRecord::Migration
  def change
    sql = ""
    source = File.new("./config/cat_devices.sql", "r")
    while (line = source.gets)
      sql << line
    end
    source.close
    execute sql
  end
end
