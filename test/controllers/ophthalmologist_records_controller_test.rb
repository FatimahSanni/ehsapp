require 'test_helper'

class OphthalmologistRecordsControllerTest < ActionController::TestCase
  setup do
    @ophthalmologist_record = ophthalmologist_records(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ophthalmologist_records)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ophthalmologist_record" do
    assert_difference('OphthalmologistRecord.count') do
      post :create, ophthalmologist_record: { allergy: @ophthalmologist_record.allergy, asthma: @ophthalmologist_record.asthma, bp: @ophthalmologist_record.bp, c_le: @ophthalmologist_record.c_le, c_re: @ophthalmologist_record.c_re, cardiac: @ophthalmologist_record.cardiac, complaint: @ophthalmologist_record.complaint, consultant_id: @ophthalmologist_record.consultant_id, diabetes: @ophthalmologist_record.diabetes, diagnosis: @ophthalmologist_record.diagnosis, duration: @ophthalmologist_record.duration, facial_le: @ophthalmologist_record.facial_le, facial_re: @ophthalmologist_record.facial_re, family_history: @ophthalmologist_record.family_history, general_medical_history: @ophthalmologist_record.general_medical_history, history: @ophthalmologist_record.history, hypertension: @ophthalmologist_record.hypertension, investigations: @ophthalmologist_record.investigations, le: @ophthalmologist_record.le, medications: @ophthalmologist_record.medications, ocular_le: @ophthalmologist_record.ocular_le, ocular_re: @ophthalmologist_record.ocular_re, others: @ophthalmologist_record.others, patient_id: @ophthalmologist_record.patient_id, prediagnosis: @ophthalmologist_record.prediagnosis, previous_problems: @ophthalmologist_record.previous_problems, pupil_le: @ophthalmologist_record.pupil_le, pupil_re: @ophthalmologist_record.pupil_re, re: @ophthalmologist_record.re, refraction: @ophthalmologist_record.refraction, s_le: @ophthalmologist_record.s_le, s_re: @ophthalmologist_record.s_re, smoking: @ophthalmologist_record.smoking, social_history: @ophthalmologist_record.social_history, treatment: @ophthalmologist_record.treatment, urine: @ophthalmologist_record.urine }
    end

    assert_redirected_to ophthalmologist_record_path(assigns(:ophthalmologist_record))
  end

  test "should show ophthalmologist_record" do
    get :show, id: @ophthalmologist_record
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ophthalmologist_record
    assert_response :success
  end

  test "should update ophthalmologist_record" do
    patch :update, id: @ophthalmologist_record, ophthalmologist_record: { allergy: @ophthalmologist_record.allergy, asthma: @ophthalmologist_record.asthma, bp: @ophthalmologist_record.bp, c_le: @ophthalmologist_record.c_le, c_re: @ophthalmologist_record.c_re, cardiac: @ophthalmologist_record.cardiac, complaint: @ophthalmologist_record.complaint, consultant_id: @ophthalmologist_record.consultant_id, diabetes: @ophthalmologist_record.diabetes, diagnosis: @ophthalmologist_record.diagnosis, duration: @ophthalmologist_record.duration, facial_le: @ophthalmologist_record.facial_le, facial_re: @ophthalmologist_record.facial_re, family_history: @ophthalmologist_record.family_history, general_medical_history: @ophthalmologist_record.general_medical_history, history: @ophthalmologist_record.history, hypertension: @ophthalmologist_record.hypertension, investigations: @ophthalmologist_record.investigations, le: @ophthalmologist_record.le, medications: @ophthalmologist_record.medications, ocular_le: @ophthalmologist_record.ocular_le, ocular_re: @ophthalmologist_record.ocular_re, others: @ophthalmologist_record.others, patient_id: @ophthalmologist_record.patient_id, prediagnosis: @ophthalmologist_record.prediagnosis, previous_problems: @ophthalmologist_record.previous_problems, pupil_le: @ophthalmologist_record.pupil_le, pupil_re: @ophthalmologist_record.pupil_re, re: @ophthalmologist_record.re, refraction: @ophthalmologist_record.refraction, s_le: @ophthalmologist_record.s_le, s_re: @ophthalmologist_record.s_re, smoking: @ophthalmologist_record.smoking, social_history: @ophthalmologist_record.social_history, treatment: @ophthalmologist_record.treatment, urine: @ophthalmologist_record.urine }
    assert_redirected_to ophthalmologist_record_path(assigns(:ophthalmologist_record))
  end

  test "should destroy ophthalmologist_record" do
    assert_difference('OphthalmologistRecord.count', -1) do
      delete :destroy, id: @ophthalmologist_record
    end

    assert_redirected_to ophthalmologist_records_path
  end
end
