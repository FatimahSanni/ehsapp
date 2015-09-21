require 'test_helper'

class PharmacyStocksControllerTest < ActionController::TestCase
  setup do
    @pharmacy_stock = pharmacy_stocks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pharmacy_stocks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pharmacy_stock" do
    assert_difference('PharmacyStock.count') do
      post :create, pharmacy_stock: { amount: @pharmacy_stock.amount, category: @pharmacy_stock.category, name: @pharmacy_stock.name }
    end

    assert_redirected_to pharmacy_stock_path(assigns(:pharmacy_stock))
  end

  test "should show pharmacy_stock" do
    get :show, id: @pharmacy_stock
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pharmacy_stock
    assert_response :success
  end

  test "should update pharmacy_stock" do
    patch :update, id: @pharmacy_stock, pharmacy_stock: { amount: @pharmacy_stock.amount, category: @pharmacy_stock.category, name: @pharmacy_stock.name }
    assert_redirected_to pharmacy_stock_path(assigns(:pharmacy_stock))
  end

  test "should destroy pharmacy_stock" do
    assert_difference('PharmacyStock.count', -1) do
      delete :destroy, id: @pharmacy_stock
    end

    assert_redirected_to pharmacy_stocks_path
  end
end
