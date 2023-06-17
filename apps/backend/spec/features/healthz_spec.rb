# frozen_string_literal: true

describe "Healthz endpoint" do
  before { visit(healthz_path) }

  it "returns http success" do
    expect(page).to have_http_status(:success)
  end

  it "have healthz" do
    expect(page).to have_content("Application is ok")
  end
end
