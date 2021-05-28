require 'rails_helper'

RSpec.describe "transfers/index", type: :view do
  before(:each) do
    assign(:transfers, [
      Transfer.create!(
        account: nil,
        amount: "9.99",
        account_to: 2
      ),
      Transfer.create!(
        account: nil,
        amount: "9.99",
        account_to: 2
      )
    ])
  end

  it "renders a list of transfers" do
    render
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: "9.99".to_s, count: 2
    assert_select "tr>td", text: 2.to_s, count: 2
  end
end
