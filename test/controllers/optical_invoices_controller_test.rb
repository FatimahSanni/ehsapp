require 'test_helper'

class OpticalInvoicesControllerTest < ActionController::TestCase
  setup do
    @optical_invoice = optical_invoices(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:optical_invoices)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create optical_invoice" do
    assert_difference('OpticalInvoice.count') do
      post :create, optical_invoice: { optometrist_id: @optical_invoice.optometrist_id, patient_id: @optical_invoice.patient_id }
    end

    assert_redirected_to optical_invoice_path(assigns(:optical_invoice))
  end

  test "should show optical_invoice" do
    get :show, id: @optical_invoice
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @optical_invoice
    assert_response :success
  end

  test "should update optical_invoice" do
    patch :update, id: @optical_invoice, optical_invoice: { optometrist_id: @optical_invoice.optometrist_id, patient_id: @optical_invoice.patient_id }
    assert_redirected_to optical_invoice_path(assigns(:optical_invoice))
  end

  test "should destroy optical_invoice" do
    assert_difference('OpticalInvoice.count', -1) do
      delete :destroy, id: @optical_invoice
    end

    assert_redirected_to optical_invoices_path
  end
end
