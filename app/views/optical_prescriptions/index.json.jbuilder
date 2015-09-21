json.array!(@optical_prescriptions) do |optical_prescription|
  json.extract! optical_prescription, :id, :patient_id, :consultant_id, :sph_re, :sph_le, :cyl_re, :cyl_le, :axis_re, :axis_le, :prism_re, :prism_le, :add_re, :add_le, :lens_type
  json.url optical_prescription_url(optical_prescription, format: :json)
end
