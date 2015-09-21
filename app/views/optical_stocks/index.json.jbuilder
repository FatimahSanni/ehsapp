json.array!(@optical_stocks) do |optical_stock|
  json.extract! optical_stock, :id, :name, :amount, :category
  json.url optical_stock_url(optical_stock, format: :json)
end
