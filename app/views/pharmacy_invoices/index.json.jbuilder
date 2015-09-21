json.array!(@pharmacy_invoices) do |pharmacy_invoice|
  json.extract! pharmacy_invoice, :id, :patient_id, :consultant_id
  json.url pharmacy_invoice_url(pharmacy_invoice, format: :json)
end
