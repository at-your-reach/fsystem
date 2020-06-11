require "application_system_test_case"

class CustomersTest < ApplicationSystemTestCase
  setup do
    @customer = customers(:one)
  end

  test "visiting the index" do
    visit customers_url
    assert_selector "h1", text: "Customers"
  end

  test "creating a Customer" do
    visit customers_url
    click_on "New Customer"

    fill_in "Accounts opened", with: @customer.accounts_opened
    fill_in "Age", with: @customer.age
    fill_in "Beneficiary", with: @customer.beneficiary
    fill_in "Birth date", with: @customer.birth_date
    fill_in "Date account opened", with: @customer.date_account_opened
    fill_in "District", with: @customer.district
    fill_in "Email", with: @customer.email
    fill_in "First name", with: @customer.first_name
    fill_in "Gender", with: @customer.gender
    fill_in "House number", with: @customer.house_number
    fill_in "Id number", with: @customer.id_number
    fill_in "Id type", with: @customer.id_type
    fill_in "Landmark location", with: @customer.landmark_location
    fill_in "Last name", with: @customer.last_name
    fill_in "Marital status", with: @customer.marital_status
    fill_in "Mobile number", with: @customer.mobile_number
    fill_in "Nationality", with: @customer.nationality
    fill_in "Number of children", with: @customer.number_of_children
    fill_in "Occupation", with: @customer.occupation
    fill_in "Other name", with: @customer.other_name
    fill_in "Picture", with: @customer.picture
    fill_in "Region", with: @customer.region
    fill_in "Spouse name", with: @customer.spouse_name
    fill_in "Street name", with: @customer.street_name
    fill_in "String", with: @customer.string
    fill_in "Town", with: @customer.town
    click_on "Create Customer"

    assert_text "Customer was successfully created"
    click_on "Back"
  end

  test "updating a Customer" do
    visit customers_url
    click_on "Edit", match: :first

    fill_in "Accounts opened", with: @customer.accounts_opened
    fill_in "Age", with: @customer.age
    fill_in "Beneficiary", with: @customer.beneficiary
    fill_in "Birth date", with: @customer.birth_date
    fill_in "Date account opened", with: @customer.date_account_opened
    fill_in "District", with: @customer.district
    fill_in "Email", with: @customer.email
    fill_in "First name", with: @customer.first_name
    fill_in "Gender", with: @customer.gender
    fill_in "House number", with: @customer.house_number
    fill_in "Id number", with: @customer.id_number
    fill_in "Id type", with: @customer.id_type
    fill_in "Landmark location", with: @customer.landmark_location
    fill_in "Last name", with: @customer.last_name
    fill_in "Marital status", with: @customer.marital_status
    fill_in "Mobile number", with: @customer.mobile_number
    fill_in "Nationality", with: @customer.nationality
    fill_in "Number of children", with: @customer.number_of_children
    fill_in "Occupation", with: @customer.occupation
    fill_in "Other name", with: @customer.other_name
    fill_in "Picture", with: @customer.picture
    fill_in "Region", with: @customer.region
    fill_in "Spouse name", with: @customer.spouse_name
    fill_in "Street name", with: @customer.street_name
    fill_in "String", with: @customer.string
    fill_in "Town", with: @customer.town
    click_on "Update Customer"

    assert_text "Customer was successfully updated"
    click_on "Back"
  end

  test "destroying a Customer" do
    visit customers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Customer was successfully destroyed"
  end
end
