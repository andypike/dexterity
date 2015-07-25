require "features_helper"

RSpec.describe "Visit homepage" do
  it "shows the application name" do
    visit "/"

    expect(page).to have_content(/dexterity/i)
  end
end
