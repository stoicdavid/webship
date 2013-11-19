class Service < ActiveRecord::Base

  belongs_to :vehicle
  belongs_to :device
  accepts_nested_attributes_for :vehicle, :allow_destroy => true
  
  
  
  def polyline_points
    [[self.latitude,self.longitude],[self.latitude_dest,self.longitude_dest]]
  end
    
  def polyline
      Polylines::Encoder.encode_points(self.polyline_points)
  end
end
