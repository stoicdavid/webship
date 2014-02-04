object false
node (:success) { true }
node (:info) { 'ok' }
child :data do
  node (:services_count) { @services.size }
  child @services do
    attributes :id, :shipment,:departure_date, :device_id,:vehicle_id,:created_at, :completed
  end
end