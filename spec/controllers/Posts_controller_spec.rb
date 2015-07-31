require 'rails_helper'
require 'spec_helper'

#reference the test with the same name as the controller that is being considered in describe
  describe "PostsController", :type => :controller do
    describe "posts_controller" do
      
    it "responds successfully 200" do
      @controller = Post.new
      expect(response).to have_http_status(200)
    end
    
    it "creates an invalid post" do
      #post = :post
      #expect(build(:post, title: nil)).to_not be_valid
    end
    
    
    it "creates an invalid user" do
      #@controller = Post.new
      @controller = Post.new
      expect(build(:post, title: nil)).to_not be_valid
      
      #userToJson = user.to_json
      #passToJson = user.to_json
      
      #array = {}
      
      #userToJson = user.email
      #passToJson = user.password
      
      #expect(userToJson).to eq("ben@ben.com")
      #expect(passToJson).to eq("testtest")
    end
    
    it "create a comment" do      
      #expect(build(:post)).to_not be_valid
    end

  end
end