require 'test_helper'

class OptometristsControllerTest < ActionController::TestCase
  setup do
    @optometrist = optometrists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:optometrists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create optometrist" do
    assert_difference('Optometrist.count') do
      post :create, optometrist: { name: @optometrist.name }
    end

    assert_redirected_to optometrist_path(assigns(:optometrist))
  end

  test "should show optometrist" do
    get :show, id: @optometrist
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @optometrist
    assert_response :success
  end

  test "should update optometrist" do
    patch :update, id: @optometrist, optometrist: { name: @optometrist.name }
    assert_redirected_to optometrist_path(assigns(:optometrist))
  end

  test "should destroy optometrist" do
    assert_difference('Optometrist.count', -1) do
      delete :destroy, id: @optometrist
    end

    assert_redirected_to optometrists_path
  end
end
