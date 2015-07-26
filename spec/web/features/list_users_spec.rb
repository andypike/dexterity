require "features_helper"

RSpec.describe "List users" do
  before do
    UserRepository.clear
    [
      User.new(:name => "Andy", :email => "andy@example.com"),
      User.new(:name => "Charlie", :email => "charlie@example.com")
    ].each { |u| UserRepository.create(u) }

    visit routes.users_path
  end

  it "shows the using listing page" do
    expect(page).to have_content(/users/i)
  end

  it "displays all users" do
    expect(page).to have_css(".user", :count => 2)
  end
end
