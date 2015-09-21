json.array!(@lgas) do |lga|
  json.extract! lga, :id, :name, :state_id
  json.url lga_url(lga, format: :json)
end
