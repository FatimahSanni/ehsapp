require 'test_helper'

class LabRecordsControllerTest < ActionController::TestCase
  setup do
    @lab_record = lab_records(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:lab_records)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create lab_record" do
    assert_difference('LabRecord.count') do
      post :create, lab_record: { appearance: @lab_record.appearance, blood: @lab_record.blood, clinical_details: @lab_record.clinical_details, colour: @lab_record.colour, comment: @lab_record.comment, esr: @lab_record.esr, fbs: @lab_record.fbs, hba1c: @lab_record.hba1c, hbsag: @lab_record.hbsag, others: @lab_record.others, patient_id: @lab_record.patient_id, pcv: @lab_record.pcv, ph: @lab_record.ph, provisional_diagnosis: @lab_record.provisional_diagnosis, rbs: @lab_record.rbs, serology: @lab_record.serology, sg: @lab_record.sg }
    end

    assert_redirected_to lab_record_path(assigns(:lab_record))
  end

  test "should show lab_record" do
    get :show, id: @lab_record
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @lab_record
    assert_response :success
  end

  test "should update lab_record" do
    patch :update, id: @lab_record, lab_record: { appearance: @lab_record.appearance, blood: @lab_record.blood, clinical_details: @lab_record.clinical_details, colour: @lab_record.colour, comment: @lab_record.comment, esr: @lab_record.esr, fbs: @lab_record.fbs, hba1c: @lab_record.hba1c, hbsag: @lab_record.hbsag, others: @lab_record.others, patient_id: @lab_record.patient_id, pcv: @lab_record.pcv, ph: @lab_record.ph, provisional_diagnosis: @lab_record.provisional_diagnosis, rbs: @lab_record.rbs, serology: @lab_record.serology, sg: @lab_record.sg }
    assert_redirected_to lab_record_path(assigns(:lab_record))
  end

  test "should destroy lab_record" do
    assert_difference('LabRecord.count', -1) do
      delete :destroy, id: @lab_record
    end

    assert_redirected_to lab_records_path
  end
end
