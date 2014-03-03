object false
node (:success) { true }
node (:info) { 'ok' }
child :data do
  node (:services_count) { @services.size }
  child @services do
    attribute :id,:departure_date,:status   
    child :shipments do
      attribute :shipment
      child :vehicles do
        attribute :plate
      end
      child :devices do
        attribute :key
      end
    end
  end
end