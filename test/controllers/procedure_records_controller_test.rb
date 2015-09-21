require 'test_helper'

class ProcedureRecordsControllerTest < ActionController::TestCase
  setup do
    @procedure_record = procedure_records(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:procedure_records)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create procedure_record" do
    assert_difference('ProcedureRecord.count') do
      post :create, procedure_record: { consultant_id: @procedure_record.consultant_id, patient_id: @procedure_record.patient_id }
    end

    assert_redirected_to procedure_record_path(assigns(:procedure_record))
  end

  test "should show procedure_record" do
    get :show, id: @procedure_record
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @procedure_record
    assert_response :success
  end

  test "should update procedure_record" do
    patch :update, id: @procedure_record, procedure_record: { consultant_id: @procedure_record.consultant_id, patient_id: @procedure_record.patient_id }
    assert_redirected_to procedure_record_path(assigns(:procedure_record))
  end

  test "should destroy procedure_record" do
    assert_difference('ProcedureRecord.count', -1) do
      delete :destroy, id: @procedure_record
    end

    assert_redirected_to procedure_records_path
  end
end
