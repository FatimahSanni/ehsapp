require 'test_helper'

class LensTypesControllerTest < ActionController::TestCase
  setup do
    @lens_type = lens_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:lens_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create lens_type" do
    assert_difference('LensType.count') do
      post :create, lens_type: { name: @lens_type.name }
    end

    assert_redirected_to lens_type_path(assigns(:lens_type))
  end

  test "should show lens_type" do
    get :show, id: @lens_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @lens_type
    assert_response :success
  end

  test "should update lens_type" do
    patch :update, id: @lens_type, lens_type: { name: @lens_type.name }
    assert_redirected_to lens_type_path(assigns(:lens_type))
  end

  test "should destroy lens_type" do
    assert_difference('LensType.count', -1) do
      delete :destroy, id: @lens_type
    end

    assert_redirected_to lens_types_path
  end
end
