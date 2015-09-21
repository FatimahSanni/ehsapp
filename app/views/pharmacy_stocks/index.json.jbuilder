json.array!(@pharmacy_stocks) do |pharmacy_stock|
  json.extract! pharmacy_stock, :id, :name, :amount, :category
  json.url pharmacy_stock_url(pharmacy_stock, format: :json)
end
