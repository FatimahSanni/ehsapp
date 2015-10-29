json.array!(@payments) do |payment|
  json.extract! payment, :id, :patient_id, :consultant_id, :amount, :invoice_id, :company_id, :user_id
  json.url payment_url(payment, format: :json)
end
