json.array!(@discharges) do |discharge|
  json.extract! discharge, :id, :patient_id, :note
  json.url discharge_url(discharge, format: :json)
end
