require File.dirname(__FILE__) + '/comments_controller_spec'
require 'rails_helper'
require 'spec_helper'

describe 'GET #index', :type => :controller do
  context 'when user logged in' do
  
    #it "should create" do
    #  @comment = Comment.new
    #  expect(response).to have_http_status(200)     
    #end
    with :user
    before do 
      sign_in user
      get :index
    end
    
    it {is_expected.to respond_with :ok}
    end
    
  
    #it "should not create a comment" do
      
      
      #@comment = CommentsController.new
      #@post = build(:post)
      #pp @post
      #@post.save
      #pp @post
      #expect(build(:post)).to be_valid 
      
      #end
      
    #it "should create a comment" do
    #  @controller = Comment.new
    #  expect(build(:comment, title: nil )).to_not be_valid
  end    
end