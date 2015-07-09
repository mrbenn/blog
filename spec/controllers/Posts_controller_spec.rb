require 'rails_helper'
require 'spec_helper'

#reference the test with the same name as the controller that is being considered in describe
  describe "PostsController", :type => :controller do
    describe "posts_controller" do
      
    it "responds successfully 200" do
      @controller = Post.new
      expect(response).to have_http_status(200)
    end
    
    it "invalid post" do
      post = :post
      expect(build(:post, title: nil)).to_not be_valid
    end
    
    
    it "should create a new user" do
      user = create (:user)
      
      userToJson = user.to_json
      passToJson = user.to_json
      
      array = {}
      
      userToJson = user.email
      passToJson = user.password
      
      expect(userToJson).to eq( "ben@ben.com")
      expect(passToJson).to eq("testtest")
    end
    
    it "redirects to home " do
      
      
    end
    
  end
end