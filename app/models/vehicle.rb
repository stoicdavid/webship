class Vehicle < ActiveRecord::Base

  has_many :assignments, dependent: :destroy
  validates_presence_of :plate, :on => :create
  
end
