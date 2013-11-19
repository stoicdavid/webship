class Vehicle < ActiveRecord::Base
  has_many :devices, :through => :services
  has_many :services
  
end
