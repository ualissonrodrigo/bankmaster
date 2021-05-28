require 'rails_helper'

RSpec.describe "Wellcomes", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/wellcome/index"
      expect(response).to have_http_status(:success)
    end
  end

end
