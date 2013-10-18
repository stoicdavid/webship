json.array!(@locations) do |location|
  json.extract! location, :name, :latitude, :longitude, :state_id
  json.url location_url(location, format: :json)
end
