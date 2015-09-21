json.array!(@admissions) do |admission|
  json.extract! admission, :id, :patient_id, :date, :service_id, :room_master_id, :anaesthesia_id, :eye, :lens_type_id
  json.url admission_url(admission, format: :json)
end
