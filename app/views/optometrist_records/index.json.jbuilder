json.array!(@optometrist_records) do |optometrist_record|
  json.extract! optometrist_record, :id, :patient_id, :optometrist, :consultant_id, :va_re, :va_le, :sc_re, :sc_le, :cc_re, :cc_le, :diagnosis
  json.url optometrist_record_url(optometrist_record, format: :json)
end
