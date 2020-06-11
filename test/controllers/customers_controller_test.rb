require 'test_helper'

class CustomersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @customer = customers(:one)
  end

  test "should get index" do
    get customers_url
    assert_response :success
  end

  test "should get new" do
    get new_customer_url
    assert_response :success
  end

  test "should create customer" do
    assert_difference('Customer.count') do
      post customers_url, params: { customer: { accounts_opened: @customer.accounts_opened, age: @customer.age, beneficiary: @customer.beneficiary, birth_date: @customer.birth_date, date_account_opened: @customer.date_account_opened, district: @customer.district, email: @customer.email, first_name: @customer.first_name, gender: @customer.gender, house_number: @customer.house_number, id_number: @customer.id_number, id_type: @customer.id_type, landmark_location: @customer.landmark_location, last_name: @customer.last_name, marital_status: @customer.marital_status, mobile_number: @customer.mobile_number, nationality: @customer.nationality, number_of_children: @customer.number_of_children, occupation: @customer.occupation, other_name: @customer.other_name, picture: @customer.picture, region: @customer.region, spouse_name: @customer.spouse_name, street_name: @customer.street_name, string: @customer.string, town: @customer.town } }
    end

    assert_redirected_to customer_url(Customer.last)
  end

  test "should show customer" do
    get customer_url(@customer)
    assert_response :success
  end

  test "should get edit" do
    get edit_customer_url(@customer)
    assert_response :success
  end

  test "should update customer" do
    patch customer_url(@customer), params: { customer: { accounts_opened: @customer.accounts_opened, age: @customer.age, beneficiary: @customer.beneficiary, birth_date: @customer.birth_date, date_account_opened: @customer.date_account_opened, district: @customer.district, email: @customer.email, first_name: @customer.first_name, gender: @customer.gender, house_number: @customer.house_number, id_number: @customer.id_number, id_type: @customer.id_type, landmark_location: @customer.landmark_location, last_name: @customer.last_name, marital_status: @customer.marital_status, mobile_number: @customer.mobile_number, nationality: @customer.nationality, number_of_children: @customer.number_of_children, occupation: @customer.occupation, other_name: @customer.other_name, picture: @customer.picture, region: @customer.region, spouse_name: @customer.spouse_name, street_name: @customer.street_name, string: @customer.string, town: @customer.town } }
    assert_redirected_to customer_url(@customer)
  end

  test "should destroy customer" do
    assert_difference('Customer.count', -1) do
      delete customer_url(@customer)
    end

    assert_redirected_to customers_url
  end
end
