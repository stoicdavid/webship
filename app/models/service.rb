class Service < ActiveRecord::Base
  belongs_to :user
  has_many :shipments, dependent: :destroy
  has_many :vehicles, :through => :shipments
  has_many :devices, :through => :shipments
  accepts_nested_attributes_for :shipments, :reject_if => lambda { |attrs| attrs[:shipment].blank?},:allow_destroy => true 

  default_scope order('completed ASC, created_at DESC')
  
  def polyline_points
    [[self.latitude,self.longitude],[self.latitude_dest,self.longitude_dest]]
  end
    
  def polyline
      Polylines::Encoder.encode_points(self.polyline_points)
  end
  
  def with_blank_shipments(n = 1) n.times do
      shipments.build
  end
  self
  end
  
end
