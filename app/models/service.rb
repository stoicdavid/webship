class Service < ActiveRecord::Base
  belongs_to :user
  has_many :shipments, dependent: :destroy
  has_many :vehicles, :through => :shipments
  has_many :devices, :through => :shipments
  accepts_nested_attributes_for :shipments, :reject_if => lambda { |attrs| attrs[:shipment].blank?},:allow_destroy => true 

  default_scope order('completed ASC, created_at DESC')
  
  
  
  def with_blank_shipments(n = 1) n.times do
      s= shipments.build
      2.times {s.vehicles.build}
      s.devices.build
  end
  self
  end
  

  
end
