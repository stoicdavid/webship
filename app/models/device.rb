class Device < ActiveRecord::Base
  has_many :vehicles, :through => :services
  has_many :services
  
  
end
