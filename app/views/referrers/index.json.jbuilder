json.array!(@referrers) do |referrer|
  json.extract! referrer, :id, :name, :address, :email, :phone
  json.url referrer_url(referrer, format: :json)
end
