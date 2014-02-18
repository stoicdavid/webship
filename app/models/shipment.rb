class Shipment < ActiveRecord::Base
  belongs_to :service
  has_many :assignments, dependent: :destroy 
  has_many :vehicles, :through => :assignments, dependent: :destroy
  has_many :devices, :through => :assignments, dependent: :destroy
  has_many :lines, :through => :assignments, dependent: :destroy
  accepts_nested_attributes_for :assignments, :allow_destroy => true
  accepts_nested_attributes_for :vehicles, :allow_destroy => true  
  accepts_nested_attributes_for :devices, :allow_destroy => true  
  
  validates_presence_of :shipment, :on => :create
  validates_uniqueness_of :shipment, :on => :create
  validates_numericality_of :shipment, :on => :create
  
end
