require 'test_helper'

class ConsultantCategoriesControllerTest < ActionController::TestCase
  setup do
    @consultant_category = consultant_categories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:consultant_categories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create consultant_category" do
    assert_difference('ConsultantCategory.count') do
      post :create, consultant_category: { name: @consultant_category.name }
    end

    assert_redirected_to consultant_category_path(assigns(:consultant_category))
  end

  test "should show consultant_category" do
    get :show, id: @consultant_category
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @consultant_category
    assert_response :success
  end

  test "should update consultant_category" do
    patch :update, id: @consultant_category, consultant_category: { name: @consultant_category.name }
    assert_redirected_to consultant_category_path(assigns(:consultant_category))
  end

  test "should destroy consultant_category" do
    assert_difference('ConsultantCategory.count', -1) do
      delete :destroy, id: @consultant_category
    end

    assert_redirected_to consultant_categories_path
  end
end
