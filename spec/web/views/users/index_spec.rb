RSpec.describe Web::Views::Users::Index do
  let(:template) do
    Lotus::View::Template.new("apps/web/templates/users/index.html.slim")
  end
  let(:exposures) { { :users => [] } }
  let(:view)      { Web::Views::Users::Index.new(template, exposures) }
  let(:rendered)  { view.render }
  let(:no_users_message) { "There are no users" }

  context "when there are no users" do
    it "shows the 'no users' message" do
      expect(rendered).to include(no_users_message)
    end
  end

  context "when there are users" do
    let(:user) { User.new(:name => "Andy") }
    let(:exposures) { { :users => [user] } }

    it "hides the 'no users' message" do
      expect(rendered).not_to include(no_users_message)
    end

    it "lists users by name" do
      expect(rendered).to include(user.name)
    end
  end
end
