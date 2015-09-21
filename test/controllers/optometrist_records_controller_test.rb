require 'test_helper'

class OptometristRecordsControllerTest < ActionController::TestCase
  setup do
    @optometrist_record = optometrist_records(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:optometrist_records)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create optometrist_record" do
    assert_difference('OptometristRecord.count') do
      post :create, optometrist_record: { cc_le: @optometrist_record.cc_le, cc_re: @optometrist_record.cc_re, consultant_id: @optometrist_record.consultant_id, diagnosis: @optometrist_record.diagnosis, optometrist: @optometrist_record.optometrist, patient_id: @optometrist_record.patient_id, sc_le: @optometrist_record.sc_le, sc_re: @optometrist_record.sc_re, va_le: @optometrist_record.va_le, va_re: @optometrist_record.va_re }
    end

    assert_redirected_to optometrist_record_path(assigns(:optometrist_record))
  end

  test "should show optometrist_record" do
    get :show, id: @optometrist_record
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @optometrist_record
    assert_response :success
  end

  test "should update optometrist_record" do
    patch :update, id: @optometrist_record, optometrist_record: { cc_le: @optometrist_record.cc_le, cc_re: @optometrist_record.cc_re, consultant_id: @optometrist_record.consultant_id, diagnosis: @optometrist_record.diagnosis, optometrist: @optometrist_record.optometrist, patient_id: @optometrist_record.patient_id, sc_le: @optometrist_record.sc_le, sc_re: @optometrist_record.sc_re, va_le: @optometrist_record.va_le, va_re: @optometrist_record.va_re }
    assert_redirected_to optometrist_record_path(assigns(:optometrist_record))
  end

  test "should destroy optometrist_record" do
    assert_difference('OptometristRecord.count', -1) do
      delete :destroy, id: @optometrist_record
    end

    assert_redirected_to optometrist_records_path
  end
end
