json.array!(@storeys) do |storey|
  json.extract! storey, :id, :name
  json.url storey_url(storey, format: :json)
end
