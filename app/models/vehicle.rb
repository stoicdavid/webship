class Vehicle < ActiveRecord::Base

  has_many :assignments, dependent: :destroy
  
  
end
