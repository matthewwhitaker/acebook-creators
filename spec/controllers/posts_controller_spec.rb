require 'rails_helper'

RSpec.describe PostsController, type: :controller do
  describe "GET /new " do
    it "responds with 200" do
      get :new
      expect(response).to have_http_status(200)
    end
  end

  describe "POST /" do
    it "responds with 200" do
      fill_in_database("Hello, world!")
      expect(response).to redirect_to(posts_url)
    end

    it "creates a post" do
      fill_in_database("Hello, world!")
      expect(Post.find_by(message: "Hello, world!")).to be
    end

    it "creates a multi-line post" do
      post :create, params: { post: { message: "This\r\n is \r\n a \r\n multi-line \r\n post!" } }
      expect(Post.find_by(message: "This\r\n is \r\n a \r\n multi-line \r\n post!")).to be
    end
  end

  describe "GET /" do
    it "responds with 200" do
      get :index
      expect(response).to have_http_status(200)
    end

    it "orders posts in reverse order" do
      fill_in_database("Hello Today")
      fill_in_database("Second post")
      expect(Post.all.order("created_at DESC")[0][:message]).to eq("Second post")
    end
  end
end
