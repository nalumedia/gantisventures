require "test_helper"

class InvestmentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @investment = investments(:one)
  end

  test "should get index" do
    get investments_url
    assert_response :success
  end

  test "should get new" do
    get new_investment_url
    assert_response :success
  end

  test "should create investment" do
    assert_difference('Investment.count') do
      post investments_url, params: { investment: { fee_notes: @investment.fee_notes, fees: @investment.fees, investment_amount: @investment.investment_amount, notes: @investment.notes, ownership: @investment.ownership, post_money: @investment.post_money, pre_money: @investment.pre_money, round: @investment.round, security_type: @investment.security_type, source_id: @investment.source_id, target_exit: @investment.target_exit, target_exit_notes: @investment.target_exit_notes, terms: @investment.terms } }
    end

    assert_redirected_to investment_url(Investment.last)
  end

  test "should show investment" do
    get investment_url(@investment)
    assert_response :success
  end

  test "should get edit" do
    get edit_investment_url(@investment)
    assert_response :success
  end

  test "should update investment" do
    patch investment_url(@investment), params: { investment: { fee_notes: @investment.fee_notes, fees: @investment.fees, investment_amount: @investment.investment_amount, notes: @investment.notes, ownership: @investment.ownership, post_money: @investment.post_money, pre_money: @investment.pre_money, round: @investment.round, security_type: @investment.security_type, source_id: @investment.source_id, target_exit: @investment.target_exit, target_exit_notes: @investment.target_exit_notes, terms: @investment.terms } }
    assert_redirected_to investment_url(@investment)
  end

  test "should destroy investment" do
    assert_difference('Investment.count', -1) do
      delete investment_url(@investment)
    end

    assert_redirected_to investments_url
  end
end
