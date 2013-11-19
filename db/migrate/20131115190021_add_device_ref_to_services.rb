class AddDeviceRefToServices < ActiveRecord::Migration
  def change
    add_reference :services, :device, index: true
    end
end
