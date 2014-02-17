class Assignment < ActiveRecord::Base
  belongs_to :vehicle
  belongs_to :device
  belongs_to :shipment
  belongs_to :lines
  accepts_nested_attributes_for :shipment, :allow_destroy => true  
  accepts_nested_attributes_for :vehicle, :allow_destroy => true
  accepts_nested_attributes_for :device, :allow_destroy => true
  
end
