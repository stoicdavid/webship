class Location < ActiveRecord::Base
  belongs_to :state
  
  def latlng
      [self.latitude,self.longitude]
    end
  
end
