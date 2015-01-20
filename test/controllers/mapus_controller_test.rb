require 'test_helper'

class MapusControllerTest < ActionController::TestCase
  setup do
    @mapu = mapus(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mapus)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mapu" do
    assert_difference('Mapu.count') do
      post :create, mapu: { address: @mapu.address, description: @mapu.description, latitude: @mapu.latitude, longitude: @mapu.longitude, title: @mapu.title }
    end

    assert_redirected_to mapu_path(assigns(:mapu))
  end

  test "should show mapu" do
    get :show, id: @mapu
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mapu
    assert_response :success
  end

  test "should update mapu" do
    patch :update, id: @mapu, mapu: { address: @mapu.address, description: @mapu.description, latitude: @mapu.latitude, longitude: @mapu.longitude, title: @mapu.title }
    assert_redirected_to mapu_path(assigns(:mapu))
  end

  test "should destroy mapu" do
    assert_difference('Mapu.count', -1) do
      delete :destroy, id: @mapu
    end

    assert_redirected_to mapus_path
  end
end
