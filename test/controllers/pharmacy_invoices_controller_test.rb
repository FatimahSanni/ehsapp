require 'test_helper'

class PharmacyInvoicesControllerTest < ActionController::TestCase
  setup do
    @pharmacy_invoice = pharmacy_invoices(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pharmacy_invoices)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pharmacy_invoice" do
    assert_difference('PharmacyInvoice.count') do
      post :create, pharmacy_invoice: { consultant_id: @pharmacy_invoice.consultant_id, patient_id: @pharmacy_invoice.patient_id }
    end

    assert_redirected_to pharmacy_invoice_path(assigns(:pharmacy_invoice))
  end

  test "should show pharmacy_invoice" do
    get :show, id: @pharmacy_invoice
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pharmacy_invoice
    assert_response :success
  end

  test "should update pharmacy_invoice" do
    patch :update, id: @pharmacy_invoice, pharmacy_invoice: { consultant_id: @pharmacy_invoice.consultant_id, patient_id: @pharmacy_invoice.patient_id }
    assert_redirected_to pharmacy_invoice_path(assigns(:pharmacy_invoice))
  end

  test "should destroy pharmacy_invoice" do
    assert_difference('PharmacyInvoice.count', -1) do
      delete :destroy, id: @pharmacy_invoice
    end

    assert_redirected_to pharmacy_invoices_path
  end
end
