require 'test_helper'

class AnaesthesiaControllerTest < ActionController::TestCase
  setup do
    @anaesthesia = anaesthesia(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:anaesthesia)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create anaesthesia" do
    assert_difference('Anaesthesia.count') do
      post :create, anaesthesia: { name: @anaesthesia.name }
    end

    assert_redirected_to anaesthesia_path(assigns(:anaesthesia))
  end

  test "should show anaesthesia" do
    get :show, id: @anaesthesia
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @anaesthesia
    assert_response :success
  end

  test "should update anaesthesia" do
    patch :update, id: @anaesthesia, anaesthesia: { name: @anaesthesia.name }
    assert_redirected_to anaesthesia_path(assigns(:anaesthesia))
  end

  test "should destroy anaesthesia" do
    assert_difference('Anaesthesia.count', -1) do
      delete :destroy, id: @anaesthesia
    end

    assert_redirected_to anaesthesia_index_path
  end
end
