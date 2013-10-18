json.array!(@services) do |service|
  json.extract! service, :shipment, :departure_date, :arrival_date, :release_date, :status, :latitude, :longitude, :location_id, :head_id, :departure_id, :arrival_id
  json.url service_url(service, format: :json)
end
