require 'rails_helper'

RSpec.describe "withdraws/edit", type: :view do
  before(:each) do
    @withdraw = assign(:withdraw, Withdraw.create!(
      account: nil,
      amount: "9.99"
    ))
  end

  it "renders the edit withdraw form" do
    render

    assert_select "form[action=?][method=?]", withdraw_path(@withdraw), "post" do

      assert_select "input[name=?]", "withdraw[account_id]"

      assert_select "input[name=?]", "withdraw[amount]"
    end
  end
end
