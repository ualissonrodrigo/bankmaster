require 'rails_helper'

RSpec.describe "transfers/show", type: :view do
  before(:each) do
    @transfer = assign(:transfer, Transfer.create!(
      account: nil,
      amount: "9.99",
      account_to: 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/2/)
  end
end
