# frozen_string_literal: true

describe "Create ship" do
  before { post(ships_path, params: { ship: ship_params }) }

  context "when params is invalid" do
    let(:ship_params) { attributes_for(:blank_ship) }

    it "returns http unprocessable entity status" do
      expect(response).to have_http_status(:unprocessable_entity)
    end

    it { expect(json_body).to have_key(:errors) }
  end

  context "when params is valid" do
    let(:pilot) { create(:pilot) }
    let(:ship_params) { attributes_for(:ship).merge(pilot_id: pilot.id) }

    it "returns http success status" do
      expect(response).to have_http_status(:success)
    end

    it { expect(Ship.find(json_body[:id])).to be_present }
    it { expect(json_body[:fuel_level]).to eq(ship_params[:fuel_level]) }

    it { expect(json_body[:errors]).to be_blank }
  end
end
