require "rails_helper"

RSpec.describe "Brands API", type: :request do
  describe "GET /api/brand-index" do
    before do
      @brand1 = Brand.create(name: "Rolex", country: "Switzerland")
      @brand2 = Brand.create(name: "Omega", country: "Switzerland")
    end

    it "returns a successful response" do
      get "/api/brand-index"

      expect(response).to have_http_status(200)
    end

    it "returns a list of brands" do
      get "/api/brand-index"

      json_response = JSON.parse(response.body)

      expect(json_response.count).to eq(2)
      expect(json_response[0]["name"]).to eq(@brand1.name)
      expect(json_response[1]["name"]).to eq(@brand2.name)
    end

    it "returns the correct structure for each brand" do
      get "/api/brand-index"

      json_response = JSON.parse(response.body)

      expect(json_response[0].keys).to match_array(["id", "name", "country", "created_at", "updated_at", "watches"])
    end
  end
end
