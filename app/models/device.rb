class Device < ActiveRecord::Base

  has_many :assignments, dependent: :destroy

  def free_devices
    Device.joins('left OUTER JOIN assignments ON assignments.device_id = devices.id').select(:key,:id).where('assignments.id is null')
    self
  end
  
end
