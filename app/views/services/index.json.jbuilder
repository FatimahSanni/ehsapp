json.array!(@services) do |service|
  json.extract! service, :id, :name, :amount, :service_category_id
  json.url service_url(service, format: :json)
end
