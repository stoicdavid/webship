class State < ActiveRecord::Base
  has_many :districts
  has_many :locations
end
