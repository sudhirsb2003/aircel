require 'test_helper'

class ServeysControllerTest < ActionController::TestCase
  setup do
    @servey = serveys(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:serveys)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create servey" do
    assert_difference('Servey.count') do
      post :create, servey: { address_proof_sighted: @servey.address_proof_sighted, age: @servey.age, asset_seen: @servey.asset_seen, av_done_by: @servey.av_done_by, av_supervisor_name: @servey.av_supervisor_name, bill_payer: @servey.bill_payer, bill_payer_occupation: @servey.bill_payer_occupation, credit_card: @servey.credit_card, customer_attitude: @servey.customer_attitude, customer_id: @servey.customer_id, ease_of_location: @servey.ease_of_location, expected_monthly_usage: @servey.expected_monthly_usage, final_recomendation: @servey.final_recomendation, landmark: @servey.landmark, locality: @servey.locality, mobile_number: @servey.mobile_number, pan_card: @servey.pan_card, pancard_number: @servey.pancard_number, person_contacted: @servey.person_contacted, relationship_with_applicant: @servey.relationship_with_applicant, residence_status: @servey.residence_status, residence_type: @servey.residence_type, tab_id: @servey.tab_id, telephone_number: @servey.telephone_number, user_id: @servey.user_id, vihicle_owned: @servey.vihicle_owned, years_at_current_address: @servey.years_at_current_address }
    end

    assert_redirected_to servey_path(assigns(:servey))
  end

  test "should show servey" do
    get :show, id: @servey
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @servey
    assert_response :success
  end

  test "should update servey" do
    patch :update, id: @servey, servey: { address_proof_sighted: @servey.address_proof_sighted, age: @servey.age, asset_seen: @servey.asset_seen, av_done_by: @servey.av_done_by, av_supervisor_name: @servey.av_supervisor_name, bill_payer: @servey.bill_payer, bill_payer_occupation: @servey.bill_payer_occupation, credit_card: @servey.credit_card, customer_attitude: @servey.customer_attitude, customer_id: @servey.customer_id, ease_of_location: @servey.ease_of_location, expected_monthly_usage: @servey.expected_monthly_usage, final_recomendation: @servey.final_recomendation, landmark: @servey.landmark, locality: @servey.locality, mobile_number: @servey.mobile_number, pan_card: @servey.pan_card, pancard_number: @servey.pancard_number, person_contacted: @servey.person_contacted, relationship_with_applicant: @servey.relationship_with_applicant, residence_status: @servey.residence_status, residence_type: @servey.residence_type, tab_id: @servey.tab_id, telephone_number: @servey.telephone_number, user_id: @servey.user_id, vihicle_owned: @servey.vihicle_owned, years_at_current_address: @servey.years_at_current_address }
    assert_redirected_to servey_path(assigns(:servey))
  end

  test "should destroy servey" do
    assert_difference('Servey.count', -1) do
      delete :destroy, id: @servey
    end

    assert_redirected_to serveys_path
  end
end
