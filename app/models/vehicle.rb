class Vehicle < ActiveRecord::Base
  has_many :devices, :through => :services
  belongs_to :services
  
end
