json.array!(@rooms) do |room|
  json.extract! room, :id, :name, :storey_id
  json.url room_url(room, format: :json)
end
