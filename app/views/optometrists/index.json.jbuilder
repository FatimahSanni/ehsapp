json.array!(@optometrists) do |optometrist|
  json.extract! optometrist, :id, :name
  json.url optometrist_url(optometrist, format: :json)
end
