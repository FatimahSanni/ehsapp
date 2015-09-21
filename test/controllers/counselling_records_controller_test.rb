require 'test_helper'

class CounsellingRecordsControllerTest < ActionController::TestCase
  setup do
    @counselling_record = counselling_records(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:counselling_records)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create counselling_record" do
    assert_difference('CounsellingRecord.count') do
      post :create, counselling_record: { consultant_id: @counselling_record.consultant_id, counsellor_id: @counselling_record.counsellor_id, note: @counselling_record.note, patient_id: @counselling_record.patient_id, service_id: @counselling_record.service_id }
    end

    assert_redirected_to counselling_record_path(assigns(:counselling_record))
  end

  test "should show counselling_record" do
    get :show, id: @counselling_record
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @counselling_record
    assert_response :success
  end

  test "should update counselling_record" do
    patch :update, id: @counselling_record, counselling_record: { consultant_id: @counselling_record.consultant_id, counsellor_id: @counselling_record.counsellor_id, note: @counselling_record.note, patient_id: @counselling_record.patient_id, service_id: @counselling_record.service_id }
    assert_redirected_to counselling_record_path(assigns(:counselling_record))
  end

  test "should destroy counselling_record" do
    assert_difference('CounsellingRecord.count', -1) do
      delete :destroy, id: @counselling_record
    end

    assert_redirected_to counselling_records_path
  end
end
