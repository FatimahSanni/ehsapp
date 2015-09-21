json.array!(@surgery_schedules) do |surgery_schedule|
  json.extract! surgery_schedule, :id, :patient_id, :consultant_id, :iol_power, :iol_type, :anaesthesia_id, :service_id, :eye, :remark
  json.url surgery_schedule_url(surgery_schedule, format: :json)
end
