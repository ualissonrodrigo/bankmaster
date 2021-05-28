require 'rails_helper'

RSpec.describe "deposits/edit", type: :view do
  before(:each) do
    @deposit = assign(:deposit, Deposit.create!(
      account: nil,
      amount: "9.99"
    ))
  end

  it "renders the edit deposit form" do
    render

    assert_select "form[action=?][method=?]", deposit_path(@deposit), "post" do

      assert_select "input[name=?]", "deposit[account_id]"

      assert_select "input[name=?]", "deposit[amount]"
    end
  end
end
