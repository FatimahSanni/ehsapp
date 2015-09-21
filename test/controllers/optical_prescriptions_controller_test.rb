require 'test_helper'

class OpticalPrescriptionsControllerTest < ActionController::TestCase
  setup do
    @optical_prescription = optical_prescriptions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:optical_prescriptions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create optical_prescription" do
    assert_difference('OpticalPrescription.count') do
      post :create, optical_prescription: { add_le: @optical_prescription.add_le, add_re: @optical_prescription.add_re, axis_le: @optical_prescription.axis_le, axis_re: @optical_prescription.axis_re, consultant_id: @optical_prescription.consultant_id, cyl_le: @optical_prescription.cyl_le, cyl_re: @optical_prescription.cyl_re, lens_type: @optical_prescription.lens_type, patient_id: @optical_prescription.patient_id, prism_le: @optical_prescription.prism_le, prism_re: @optical_prescription.prism_re, sph_le: @optical_prescription.sph_le, sph_re: @optical_prescription.sph_re }
    end

    assert_redirected_to optical_prescription_path(assigns(:optical_prescription))
  end

  test "should show optical_prescription" do
    get :show, id: @optical_prescription
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @optical_prescription
    assert_response :success
  end

  test "should update optical_prescription" do
    patch :update, id: @optical_prescription, optical_prescription: { add_le: @optical_prescription.add_le, add_re: @optical_prescription.add_re, axis_le: @optical_prescription.axis_le, axis_re: @optical_prescription.axis_re, consultant_id: @optical_prescription.consultant_id, cyl_le: @optical_prescription.cyl_le, cyl_re: @optical_prescription.cyl_re, lens_type: @optical_prescription.lens_type, patient_id: @optical_prescription.patient_id, prism_le: @optical_prescription.prism_le, prism_re: @optical_prescription.prism_re, sph_le: @optical_prescription.sph_le, sph_re: @optical_prescription.sph_re }
    assert_redirected_to optical_prescription_path(assigns(:optical_prescription))
  end

  test "should destroy optical_prescription" do
    assert_difference('OpticalPrescription.count', -1) do
      delete :destroy, id: @optical_prescription
    end

    assert_redirected_to optical_prescriptions_path
  end
end
