class Service < ActiveRecord::Base
  belongs_to :user
  has_many :shipments, dependent: :destroy
  accepts_nested_attributes_for :shipments, :allow_destroy => true

  default_scope order('completed ASC, created_at DESC')
  
  def polyline_points
    [[self.latitude,self.longitude],[self.latitude_dest,self.longitude_dest]]
  end
    
  def polyline
      Polylines::Encoder.encode_points(self.polyline_points)
  end
end
