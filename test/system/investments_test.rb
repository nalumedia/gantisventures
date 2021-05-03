require "application_system_test_case"

class InvestmentsTest < ApplicationSystemTestCase
  setup do
    @investment = investments(:one)
  end

  test "visiting the index" do
    visit investments_url
    assert_selector "h1", text: "Investments"
  end

  test "creating a Investment" do
    visit investments_url
    click_on "New Investment"

    fill_in "Fee notes", with: @investment.fee_notes
    fill_in "Fees", with: @investment.fees
    fill_in "Investment amount", with: @investment.investment_amount
    fill_in "Notes", with: @investment.notes
    fill_in "Ownership", with: @investment.ownership
    fill_in "Post money", with: @investment.post_money
    fill_in "Pre money", with: @investment.pre_money
    fill_in "Round", with: @investment.round
    fill_in "Security type", with: @investment.security_type
    fill_in "Source", with: @investment.source_id
    fill_in "Target exit", with: @investment.target_exit
    fill_in "Target exit notes", with: @investment.target_exit_notes
    fill_in "Terms", with: @investment.terms
    click_on "Create Investment"

    assert_text "Investment was successfully created"
    click_on "Back"
  end

  test "updating a Investment" do
    visit investments_url
    click_on "Edit", match: :first

    fill_in "Fee notes", with: @investment.fee_notes
    fill_in "Fees", with: @investment.fees
    fill_in "Investment amount", with: @investment.investment_amount
    fill_in "Notes", with: @investment.notes
    fill_in "Ownership", with: @investment.ownership
    fill_in "Post money", with: @investment.post_money
    fill_in "Pre money", with: @investment.pre_money
    fill_in "Round", with: @investment.round
    fill_in "Security type", with: @investment.security_type
    fill_in "Source", with: @investment.source_id
    fill_in "Target exit", with: @investment.target_exit
    fill_in "Target exit notes", with: @investment.target_exit_notes
    fill_in "Terms", with: @investment.terms
    click_on "Update Investment"

    assert_text "Investment was successfully updated"
    click_on "Back"
  end

  test "destroying a Investment" do
    visit investments_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Investment was successfully destroyed"
  end
end
