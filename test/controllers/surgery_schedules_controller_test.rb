require 'test_helper'

class SurgerySchedulesControllerTest < ActionController::TestCase
  setup do
    @surgery_schedule = surgery_schedules(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:surgery_schedules)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create surgery_schedule" do
    assert_difference('SurgerySchedule.count') do
      post :create, surgery_schedule: { anaesthesia_id: @surgery_schedule.anaesthesia_id, consultant_id: @surgery_schedule.consultant_id, eye: @surgery_schedule.eye, iol_power: @surgery_schedule.iol_power, iol_type: @surgery_schedule.iol_type, patient_id: @surgery_schedule.patient_id, remark: @surgery_schedule.remark, service_id: @surgery_schedule.service_id }
    end

    assert_redirected_to surgery_schedule_path(assigns(:surgery_schedule))
  end

  test "should show surgery_schedule" do
    get :show, id: @surgery_schedule
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @surgery_schedule
    assert_response :success
  end

  test "should update surgery_schedule" do
    patch :update, id: @surgery_schedule, surgery_schedule: { anaesthesia_id: @surgery_schedule.anaesthesia_id, consultant_id: @surgery_schedule.consultant_id, eye: @surgery_schedule.eye, iol_power: @surgery_schedule.iol_power, iol_type: @surgery_schedule.iol_type, patient_id: @surgery_schedule.patient_id, remark: @surgery_schedule.remark, service_id: @surgery_schedule.service_id }
    assert_redirected_to surgery_schedule_path(assigns(:surgery_schedule))
  end

  test "should destroy surgery_schedule" do
    assert_difference('SurgerySchedule.count', -1) do
      delete :destroy, id: @surgery_schedule
    end

    assert_redirected_to surgery_schedules_path
  end
end
