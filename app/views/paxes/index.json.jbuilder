json.array!(@paxes) do |pax|
  json.extract! pax, :id, :name, :room_id
  json.url pax_url(pax, format: :json)
end
