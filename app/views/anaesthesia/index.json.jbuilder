json.array!(@anaesthesia) do |anaesthesia|
  json.extract! anaesthesia, :id, :name
  json.url anaesthesia_url(anaesthesia, format: :json)
end
