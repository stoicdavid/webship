class Assignment < ActiveRecord::Base
  belongs_to :vehicle
  belongs_to :device
  belongs_to :service
end
