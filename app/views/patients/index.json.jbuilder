json.array!(@patients) do |patient|
  json.extract! patient, :id, :first_name, :middle_name, :surname, :dob, :gender, :address, :phone, :email, :occupation_id, :nationality_id, :religion_id, :next_of_kin, :next_of_kin_phone, :next_of_kin_address, :referred, :referrer_id
  json.url patient_url(patient, format: :json)
end
