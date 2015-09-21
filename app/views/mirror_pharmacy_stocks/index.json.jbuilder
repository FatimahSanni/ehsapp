json.array!(@mirror_pharmacy_stocks) do |mirror_pharmacy_stock|
  json.extract! mirror_pharmacy_stock, :id, :amount, :pharmacy_stock_id
  json.url mirror_pharmacy_stock_url(mirror_pharmacy_stock, format: :json)
end
