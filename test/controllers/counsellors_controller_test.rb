require 'test_helper'

class CounsellorsControllerTest < ActionController::TestCase
  setup do
    @counsellor = counsellors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:counsellors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create counsellor" do
    assert_difference('Counsellor.count') do
      post :create, counsellor: { name: @counsellor.name }
    end

    assert_redirected_to counsellor_path(assigns(:counsellor))
  end

  test "should show counsellor" do
    get :show, id: @counsellor
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @counsellor
    assert_response :success
  end

  test "should update counsellor" do
    patch :update, id: @counsellor, counsellor: { name: @counsellor.name }
    assert_redirected_to counsellor_path(assigns(:counsellor))
  end

  test "should destroy counsellor" do
    assert_difference('Counsellor.count', -1) do
      delete :destroy, id: @counsellor
    end

    assert_redirected_to counsellors_path
  end
end
