json.array!(@packages) do |package|
  json.extract! package, :id, :name, :registration_fee, :fup_fee
  json.url package_url(package, format: :json)
end
