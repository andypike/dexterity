require "features_helper"

RSpec.describe "List users" do
  before { visit routes.users_path }

  it "shows the using listing page" do
    expect(page).to have_content(/users/i)
  end

  it "displays all users" do
    expect(page).to have_css(".user", :text => "Andy")
    expect(page).to have_css(".user", :text => "Charlie")
  end
end
