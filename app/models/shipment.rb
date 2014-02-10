class Shipment < ActiveRecord::Base
  belongs_to :service
  has_many :assignments, dependent: :restrict 
  has_many :vehicles, :through => :assignments
  has_many :devices, :through => :assignments
  accepts_nested_attributes_for :assignments, :allow_destroy => true
  accepts_nested_attributes_for :vehicles, :allow_destroy => true
  accepts_nested_attributes_for :devices, :allow_destroy => true
  
  validates_presence_of :shipment, :on => :create, :message => "can't be blank"
  validates_uniqueness_of :shipment, :on => :create, :message => "must be unique"
  validates_numericality_of :shipment, :on => :create, :message => "is not a number"
  
end
