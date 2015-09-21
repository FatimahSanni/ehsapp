require 'test_helper'

class LgasControllerTest < ActionController::TestCase
  setup do
    @lga = lgas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:lgas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create lga" do
    assert_difference('Lga.count') do
      post :create, lga: { name: @lga.name, state_id: @lga.state_id }
    end

    assert_redirected_to lga_path(assigns(:lga))
  end

  test "should show lga" do
    get :show, id: @lga
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @lga
    assert_response :success
  end

  test "should update lga" do
    patch :update, id: @lga, lga: { name: @lga.name, state_id: @lga.state_id }
    assert_redirected_to lga_path(assigns(:lga))
  end

  test "should destroy lga" do
    assert_difference('Lga.count', -1) do
      delete :destroy, id: @lga
    end

    assert_redirected_to lgas_path
  end
end
