require 'test_helper'

class RoomMastersControllerTest < ActionController::TestCase
  setup do
    @room_master = room_masters(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:room_masters)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create room_master" do
    assert_difference('RoomMaster.count') do
      post :create, room_master: { amount: @room_master.amount, name: @room_master.name, prefix: @room_master.prefix }
    end

    assert_redirected_to room_master_path(assigns(:room_master))
  end

  test "should show room_master" do
    get :show, id: @room_master
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @room_master
    assert_response :success
  end

  test "should update room_master" do
    patch :update, id: @room_master, room_master: { amount: @room_master.amount, name: @room_master.name, prefix: @room_master.prefix }
    assert_redirected_to room_master_path(assigns(:room_master))
  end

  test "should destroy room_master" do
    assert_difference('RoomMaster.count', -1) do
      delete :destroy, id: @room_master
    end

    assert_redirected_to room_masters_path
  end
end
