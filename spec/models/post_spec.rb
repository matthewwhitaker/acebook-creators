require 'rails_helper'

RSpec.describe Post, type: :model do
  before(:each) do
    DatabaseCleaner.clean_with(:deletion)
    DatabaseCleaner.start
    User.create!(:id => 1, :email => "test@test.com", :password => "tester")
  end

  it { is_expected.to be }

  it "creates a new post" do
    current_user = double("user", :id => 1)
    new_post = Post.create!(:message => "hello", :user_id => current_user.id)
    expect(Post.all[0].message).to eq("hello")
  end

  it "can find a new post" do
    current_user = double("user", :id => 1)
    new_post = Post.create!(:message => "hello", :user_id => current_user.id)
    expect(Post.find(1).message).to eq("hello")
  end

  it "instantiates a new post" do
    test_post = Post.new
    expect(test_post).to be_kind_of(Post)
  end
end
