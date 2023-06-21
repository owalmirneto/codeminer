# frozen_string_literal: true

describe "Create pilot" do
  before { post(pilots_path, params: { pilot: pilot_params }) }

  context "when params is invalid" do
    let(:pilot_params) { attributes_for(:blank_pilot) }

    it "returns http unprocessable entity status" do
      expect(response).to have_http_status(:unprocessable_entity)
    end

    it { expect(json_body).to have_key(:errors) }
  end

  context "when params is valid" do
    let(:pilot_params) { attributes_for(:pilot) }

    it "returns http success status" do
      expect(response).to have_http_status(:success)
    end

    it { expect(Pilot.find(json_body[:id])).to be_present }
    it { expect(json_body[:name]).to eq(pilot_params[:name]) }

    it { expect(json_body[:errors]).to be_blank }
  end
end
