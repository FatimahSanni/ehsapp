json.array!(@lab_records) do |lab_record|
  json.extract! lab_record, :id, :patient_id, :provisional_diagnosis, :clinical_details, :pcv, :hba1c, :hbsag, :esr, :fbs, :rbs, :serology, :appearance, :blood, :ph, :colour, :sg, :others, :comment
  json.url lab_record_url(lab_record, format: :json)
end
