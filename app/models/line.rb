class Line < ActiveRecord::Base
  has_many :heads
  has_many :containers
end
