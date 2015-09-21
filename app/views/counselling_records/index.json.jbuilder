json.array!(@counselling_records) do |counselling_record|
  json.extract! counselling_record, :id, :counsellor_id, :patient_id, :consultant_id, :service_id, :note
  json.url counselling_record_url(counselling_record, format: :json)
end
