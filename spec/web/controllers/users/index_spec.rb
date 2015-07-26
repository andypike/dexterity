RSpec.describe Web::Controllers::Users::Index do
  let(:params) { {} }
  let(:user)   { User.new(:name => "Andy", :email => "me@somewhere.com") }

  before do
    UserRepository.clear
    @user = UserRepository.create(user)
  end

  it "returns 200 success" do
    expect(subject.call(params).first).to eq(200)
  end

  it "exposes all users" do
    subject.call(params)

    expect(subject.exposures[:users]).to eq([@user])
  end
end
