require 'rails_helper'

RSpec.describe "accounts/show", type: :view do
  before(:each) do
    @account = assign(:account, Account.create!(
      user: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
  end
end
