class Service < ActiveRecord::Base
  include AASM
  
  belongs_to :user
  has_many :shipments, dependent: :destroy
  has_many :vehicles, :through => :shipments
  has_many :devices, :through => :shipments
  accepts_nested_attributes_for :shipments, :reject_if => lambda { |attrs| attrs[:shipment].blank?},:allow_destroy => true 

  default_scope order('completed ASC, created_at DESC')
  
  
  
  aasm :column => 'status' do
      state :en_almacen, :initial => true
      state :en_transito
      state :en_destino
      state :gps_recuperado

      event :ship do
        transitions :from => :en_almacen, :to => :en_transito
      end

      event :arrive do
        transitions :from => :en_transito, :to => :en_destino, on_transition: :update_arrival
      end

      event :release do
        transitions :from => :en_destino, :to => :gps_recuperado,on_transition: :finish_service, :guard => :verify_arrival
      end
  end

  def update_arrival
    self.arrival_date=Time.now
  end
  
  def finish_service
    self.release_date=Time.now
    self.devices.map {|d| d.assigned=false}
  end
  
  def verify_arrival
    return !self.arrival_date.nil?
  end
  
  def state_index
    return self.aasm.states.map(&:name).index(self.aasm.current_state)+1
  end
  
  def with_blank_shipments(n = 1) n.times do
      s= shipments.build
      2.times {s.vehicles.build}
      s.devices.build
  end
  self
  end
  
  def read_next_event
    estados = self.aasm.states.map(&:name)
    events = ["Embarcar","Registrar Llegada","Liberar GPS"]
    h= Hash[estados.zip(events.map {|i| i.include?(',') ? (i.split /,/) : i})]
    return h[self.aasm.current_state]
  end
  
  

  
end
