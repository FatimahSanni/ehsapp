json.array!(@reserve_funds) do |reserve_fund|
  json.extract! reserve_fund, :id, :patient_id, :amount, :remark
  json.url reserve_fund_url(reserve_fund, format: :json)
end
