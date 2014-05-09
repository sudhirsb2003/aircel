require 'test_helper'

class PincodesControllerTest < ActionController::TestCase
  setup do
    @pincode = pincodes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pincodes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pincode" do
    assert_difference('Pincode.count') do
      post :create, pincode: { city: @pincode.city, city_id: @pincode.city_id, name: @pincode.name, pin_number: @pincode.pin_number, zone_id: @pincode.zone_id }
    end

    assert_redirected_to pincode_path(assigns(:pincode))
  end

  test "should show pincode" do
    get :show, id: @pincode
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pincode
    assert_response :success
  end

  test "should update pincode" do
    patch :update, id: @pincode, pincode: { city: @pincode.city, city_id: @pincode.city_id, name: @pincode.name, pin_number: @pincode.pin_number, zone_id: @pincode.zone_id }
    assert_redirected_to pincode_path(assigns(:pincode))
  end

  test "should destroy pincode" do
    assert_difference('Pincode.count', -1) do
      delete :destroy, id: @pincode
    end

    assert_redirected_to pincodes_path
  end
end
