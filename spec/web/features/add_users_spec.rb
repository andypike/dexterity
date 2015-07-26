require "features_helper"

RSpec.describe "Adding a user" do
  before { UserRepository.clear }

  context "with valid data" do
    it "creates a new user" do
      visit routes.new_user_path

      fill_in "Name",  :with => "Andy"
      fill_in "Email", :with => "me@somewhere.com"
      click_on "Save"

      expect(page).to have_content("Andy")
      expect(current_path).to eq(routes.users_path)
    end
  end
end
