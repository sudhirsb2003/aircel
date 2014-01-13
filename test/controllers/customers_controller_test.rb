require 'test_helper'

class CustomersControllerTest < ActionController::TestCase
  setup do
    @customer = customers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:customers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create customer" do
    assert_difference('Customer.count') do
      post :create, customer: { address: @customer.address, ageny_name: @customer.ageny_name, applicant_name: @customer.applicant_name, application_ref_number: @customer.application_ref_number, city: @customer.city, contact_number: @customer.contact_number, coountry: @customer.coountry, date_of_birth: @customer.date_of_birth, landmark: @customer.landmark, pincode: @customer.pincode, state: @customer.state, status: @customer.status }
    end

    assert_redirected_to customer_path(assigns(:customer))
  end

  test "should show customer" do
    get :show, id: @customer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @customer
    assert_response :success
  end

  test "should update customer" do
    patch :update, id: @customer, customer: { address: @customer.address, ageny_name: @customer.ageny_name, applicant_name: @customer.applicant_name, application_ref_number: @customer.application_ref_number, city: @customer.city, contact_number: @customer.contact_number, coountry: @customer.coountry, date_of_birth: @customer.date_of_birth, landmark: @customer.landmark, pincode: @customer.pincode, state: @customer.state, status: @customer.status }
    assert_redirected_to customer_path(assigns(:customer))
  end

  test "should destroy customer" do
    assert_difference('Customer.count', -1) do
      delete :destroy, id: @customer
    end

    assert_redirected_to customers_path
  end
end
