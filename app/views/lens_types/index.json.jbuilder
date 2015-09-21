json.array!(@lens_types) do |lens_type|
  json.extract! lens_type, :id, :name
  json.url lens_type_url(lens_type, format: :json)
end
