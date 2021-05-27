require 'rails_helper'

RSpec.describe "Centers", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/centers/index"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /show" do
    it "returns http success" do
      get "/centers/show"
      expect(response).to have_http_status(:success)
    end
  end

end
