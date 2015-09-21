json.array!(@consultants) do |consultant|
  json.extract! consultant, :id, :name, :consultant_category_id, :clinic_id
  json.url consultant_url(consultant, format: :json)
end
