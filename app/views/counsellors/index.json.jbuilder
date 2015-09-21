json.array!(@counsellors) do |counsellor|
  json.extract! counsellor, :id, :name
  json.url counsellor_url(counsellor, format: :json)
end
