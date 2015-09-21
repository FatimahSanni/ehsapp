json.array!(@invoices) do |invoice|
  json.extract! invoice, :id, :patient_id, :consultant_id
  json.url invoice_url(invoice, format: :json)
end
