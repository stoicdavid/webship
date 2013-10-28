class Service < ActiveRecord::Base
  has_many :containers, :through  => :assignments
  belongs_to :head
  
  def polyline_points
    [[self.latitude,self.longitude],[self.latitude_dest,self.longitude_dest]]
  end
    
  def polyline
      Polylines::Encoder.encode_points(self.polyline_points)
  end
end
