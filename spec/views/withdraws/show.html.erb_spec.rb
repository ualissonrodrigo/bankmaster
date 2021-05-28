require 'rails_helper'

RSpec.describe "withdraws/show", type: :view do
  before(:each) do
    @withdraw = assign(:withdraw, Withdraw.create!(
      account: nil,
      amount: "9.99"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/9.99/)
  end
end
