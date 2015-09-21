json.array!(@optical_invoices) do |optical_invoice|
  json.extract! optical_invoice, :id, :patient_id, :optometrist_id
  json.url optical_invoice_url(optical_invoice, format: :json)
end
