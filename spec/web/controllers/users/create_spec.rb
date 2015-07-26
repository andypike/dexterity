RSpec.describe Web::Controllers::Users::Create do
  let(:params) do
    {
      :user => {
        :name  => "Andy",
        :email => "me@somewhere.com"
      }
    }
  end

  before { UserRepository.clear }

  it "creates a new user" do
    subject.call(params)

    expect(subject.user.id).not_to be_nil
  end

  it "redirects to the user list" do
    response = subject.call(params)

    expect(response[0]).to eq(302)
    expect(response[1]["Location"]).to eq(routes.users_path)
  end
end
