json.array!(@room_masters) do |room_master|
  json.extract! room_master, :id, :name, :amount, :prefix
  json.url room_master_url(room_master, format: :json)
end
