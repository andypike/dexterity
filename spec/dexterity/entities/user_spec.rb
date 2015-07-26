RSpec.describe User do
  it "can be initialized with attributes" do
    user = User.new(:name => "Andy", :email => "me@somewhere.com")

    expect(user.name).to eq("Andy")
    expect(user.email).to eq("me@somewhere.com")
  end
end
