class Service < ActiveRecord::Base
  has_many :containers, :through  => :assignments
  belongs_to :head
end
