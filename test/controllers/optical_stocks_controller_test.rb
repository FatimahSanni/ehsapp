require 'test_helper'

class OpticalStocksControllerTest < ActionController::TestCase
  setup do
    @optical_stock = optical_stocks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:optical_stocks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create optical_stock" do
    assert_difference('OpticalStock.count') do
      post :create, optical_stock: { amount: @optical_stock.amount, category: @optical_stock.category, name: @optical_stock.name }
    end

    assert_redirected_to optical_stock_path(assigns(:optical_stock))
  end

  test "should show optical_stock" do
    get :show, id: @optical_stock
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @optical_stock
    assert_response :success
  end

  test "should update optical_stock" do
    patch :update, id: @optical_stock, optical_stock: { amount: @optical_stock.amount, category: @optical_stock.category, name: @optical_stock.name }
    assert_redirected_to optical_stock_path(assigns(:optical_stock))
  end

  test "should destroy optical_stock" do
    assert_difference('OpticalStock.count', -1) do
      delete :destroy, id: @optical_stock
    end

    assert_redirected_to optical_stocks_path
  end
end
