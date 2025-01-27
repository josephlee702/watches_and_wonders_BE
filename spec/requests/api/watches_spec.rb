require "rails_helper"

RSpec.describe "Watches API", type: :request do
  describe "GET /api/watch-index" do
    before do
      @brand1 = Brand.create(name: "Rolex", country: "Switzerland")
      @brand2 = Brand.create(name: "Omega", country: "Switzerland")

      @watch1 = Watch.create(reference_number: "116500LN", model: "Daytona", price: 14000, movement: "Automatic", year_of_production: 2021, case_material: "Steel", case_diameter: "40mm", description: "Chronograph watch", bracelet: "Oystersteel", lug_to_lug: "47mm", lume: true, brand_id: @brand1.id)

      @watch2 = Watch.create(reference_number: "310.30.42.50.01.001", model: "Speedmaster", price: 6100, movement: "Manual", year_of_production: 2020, case_material: "Steel", case_diameter: "42mm", description: "Moonwatch", bracelet: "Steel", lug_to_lug: "48mm", lume: true, brand_id: @brand2.id)
    end

    it "returns a successful response" do
      get "/api/watch-index"

      expect(response).to have_http_status(200)
    end

    it "returns a list of watches" do
      get "/api/watch-index"

      json_response = JSON.parse(response.body)

      expect(json_response.count).to eq(2)
      expect(json_response[0]["reference_number"]).to eq(@watch1.reference_number)
      expect(json_response[1]["reference_number"]).to eq(@watch2.reference_number)
    end

    it "returns the correct structure for each watch" do
      get "/api/watch-index"

      json_response = JSON.parse(response.body)

      expect(json_response[0].keys).to match_array(["reference_number", "brand", "brand_id", "model", "price", "movement", "year_of_production", "case_material", "case_diameter", "description", "bracelet", "lug_to_lug", "lume", "created_at", "updated_at", "id"])
    end
  end
end
