require "application_system_test_case"

class OfficersTest < ApplicationSystemTestCase
  setup do
    @officer = officers(:one)
  end

  test "visiting the index" do
    visit officers_url
    assert_selector "h1", text: "Officers"
  end

  test "creating a Officer" do
    visit officers_url
    click_on "New Officer"

    fill_in "Address", with: @officer.address
    fill_in "Age", with: @officer.age
    fill_in "Birth date", with: @officer.birth_date
    fill_in "Children amount", with: @officer.children_amount
    fill_in "Customer amount", with: @officer.customer_amount
    fill_in "Education", with: @officer.education
    fill_in "Email", with: @officer.email
    fill_in "Gender", with: @officer.gender
    fill_in "Marital status", with: @officer.marital_status
    fill_in "Mobile number", with: @officer.mobile_number
    fill_in "Name", with: @officer.name
    fill_in "Nationality", with: @officer.nationality
    click_on "Create Officer"

    assert_text "Officer was successfully created"
    click_on "Back"
  end

  test "updating a Officer" do
    visit officers_url
    click_on "Edit", match: :first

    fill_in "Address", with: @officer.address
    fill_in "Age", with: @officer.age
    fill_in "Birth date", with: @officer.birth_date
    fill_in "Children amount", with: @officer.children_amount
    fill_in "Customer amount", with: @officer.customer_amount
    fill_in "Education", with: @officer.education
    fill_in "Email", with: @officer.email
    fill_in "Gender", with: @officer.gender
    fill_in "Marital status", with: @officer.marital_status
    fill_in "Mobile number", with: @officer.mobile_number
    fill_in "Name", with: @officer.name
    fill_in "Nationality", with: @officer.nationality
    click_on "Update Officer"

    assert_text "Officer was successfully updated"
    click_on "Back"
  end

  test "destroying a Officer" do
    visit officers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Officer was successfully destroyed"
  end
end
