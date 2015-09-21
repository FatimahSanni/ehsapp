json.array!(@procedure_records) do |procedure_record|
  json.extract! procedure_record, :id, :patient_id, :consultant_id
  json.url procedure_record_url(procedure_record, format: :json)
end
