class Service < ActiveRecord::Base

  belongs_to :vehicle
  belongs_to :device
  belongs_to :user
  accepts_nested_attributes_for :vehicle, :allow_destroy => true
  validates_presence_of :shipment, :on => :create, :message => "can't be blank"
  validates_uniqueness_of :shipment, :on => :create, :message => "must be unique"
  validates_numericality_of :shipment, :on => :create, :message => "is not a number"

  default_scope order('completed ASC, created_at DESC')
  
  def polyline_points
    [[self.latitude,self.longitude],[self.latitude_dest,self.longitude_dest]]
  end
    
  def polyline
      Polylines::Encoder.encode_points(self.polyline_points)
  end
end
