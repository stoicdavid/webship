class Assignment < ActiveRecord::Base
  has_many :containers, :class_name => "container", :foreign_key => "reference_id"
end
