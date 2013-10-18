json.array!(@containers) do |container|
  json.extract! container, :plate, :economic, :type, :color, :features
  json.url container_url(container, format: :json)
end
