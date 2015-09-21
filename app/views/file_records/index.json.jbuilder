json.array!(@file_records) do |file_record|
  json.extract! file_record, :id, :patient_id, :borrower, :reason
  json.url file_record_url(file_record, format: :json)
end
