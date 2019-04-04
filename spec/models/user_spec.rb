require 'rails_helper'

RSpec.describe User, type: :model do
  before(:each) do
    DatabaseCleaner.clean_with(:deletion)
    DatabaseCleaner.start
  end

  it { is_expected.to be }

  it "creates a new user and can find it" do
    User.create!(:id => 1, :email => "test@test.com", :password => "tester")
    expect(User.find_by(id: 1)).to be_kind_of(User)
  end

  it "creates a new user which has accessible fields" do
    User.create!(:id => 1, :email => "test@test.com", :password => "tester")
    expect(User.find_by(id: 1).email).to eq("test@test.com")
  end
end
