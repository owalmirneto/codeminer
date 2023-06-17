# frozen_string_literal: true

describe "Home page" do
  before { visit(root_path) }

  it "returns http success" do
    expect(page).to have_http_status(:success)
  end

  it { expect(page).to have_css("h1", text: "CodeMiner 42") }
  it { expect(page).to have_css("p", text: "Ruby Software Engineer challenge") }
end
