json.array!(@ophthalmologist_records) do |ophthalmologist_record|
  json.extract! ophthalmologist_record, :id, :patient_id, :consultant_id, :prediagnosis, :re, :le, :s_re, :s_le, :c_re, :c_le, :refraction, :complaint, :duration, :history, :previous_problems, :general_medical_history, :medications, :family_history, :social_history, :bp, :urine, :diabetes, :hypertension, :cardiac, :asthma, :others, :allergy, :smoking, :facial_re, :facial_le, :pupil_re, :pupil_le, :ocular_re, :ocular_le, :investigations, :diagnosis, :treatment
  json.url ophthalmologist_record_url(ophthalmologist_record, format: :json)
end
