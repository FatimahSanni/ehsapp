json.array!(@appointments) do |appointment|
  json.extract! appointment, :id, :patient_id, :time_slot_id, :consultant_id, :remark
  json.url appointment_url(appointment, format: :json)
end
