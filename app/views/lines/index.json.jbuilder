json.array!(@lines) do |line|
  json.extract! line, :name
  json.url line_url(line, format: :json)
end
