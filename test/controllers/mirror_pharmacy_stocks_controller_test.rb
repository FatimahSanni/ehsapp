require 'test_helper'

class MirrorPharmacyStocksControllerTest < ActionController::TestCase
  setup do
    @mirror_pharmacy_stock = mirror_pharmacy_stocks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mirror_pharmacy_stocks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mirror_pharmacy_stock" do
    assert_difference('MirrorPharmacyStock.count') do
      post :create, mirror_pharmacy_stock: { amount: @mirror_pharmacy_stock.amount, pharmacy_stock_id: @mirror_pharmacy_stock.pharmacy_stock_id }
    end

    assert_redirected_to mirror_pharmacy_stock_path(assigns(:mirror_pharmacy_stock))
  end

  test "should show mirror_pharmacy_stock" do
    get :show, id: @mirror_pharmacy_stock
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mirror_pharmacy_stock
    assert_response :success
  end

  test "should update mirror_pharmacy_stock" do
    patch :update, id: @mirror_pharmacy_stock, mirror_pharmacy_stock: { amount: @mirror_pharmacy_stock.amount, pharmacy_stock_id: @mirror_pharmacy_stock.pharmacy_stock_id }
    assert_redirected_to mirror_pharmacy_stock_path(assigns(:mirror_pharmacy_stock))
  end

  test "should destroy mirror_pharmacy_stock" do
    assert_difference('MirrorPharmacyStock.count', -1) do
      delete :destroy, id: @mirror_pharmacy_stock
    end

    assert_redirected_to mirror_pharmacy_stocks_path
  end
end
