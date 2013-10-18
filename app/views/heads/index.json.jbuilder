json.array!(@heads) do |head|
  json.extract! head, :placas, :economico, :brand, :color, :year
  json.url head_url(head, format: :json)
end
