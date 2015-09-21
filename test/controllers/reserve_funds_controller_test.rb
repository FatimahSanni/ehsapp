require 'test_helper'

class ReserveFundsControllerTest < ActionController::TestCase
  setup do
    @reserve_fund = reserve_funds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:reserve_funds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create reserve_fund" do
    assert_difference('ReserveFund.count') do
      post :create, reserve_fund: { amount: @reserve_fund.amount, patient_id: @reserve_fund.patient_id, remark: @reserve_fund.remark }
    end

    assert_redirected_to reserve_fund_path(assigns(:reserve_fund))
  end

  test "should show reserve_fund" do
    get :show, id: @reserve_fund
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @reserve_fund
    assert_response :success
  end

  test "should update reserve_fund" do
    patch :update, id: @reserve_fund, reserve_fund: { amount: @reserve_fund.amount, patient_id: @reserve_fund.patient_id, remark: @reserve_fund.remark }
    assert_redirected_to reserve_fund_path(assigns(:reserve_fund))
  end

  test "should destroy reserve_fund" do
    assert_difference('ReserveFund.count', -1) do
      delete :destroy, id: @reserve_fund
    end

    assert_redirected_to reserve_funds_path
  end
end
