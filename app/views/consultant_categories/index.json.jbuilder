json.array!(@consultant_categories) do |consultant_category|
  json.extract! consultant_category, :id, :name
  json.url consultant_category_url(consultant_category, format: :json)
end
