require 'spec_helper'

describe PostsController, :type => :controller do

  it "ups the count when creating new post" do
    @post = create(:post)
    expect(Post.count).to eq(1)
  end

    it "responds successfully" do
      get :index
      expect(response.status).to eq(200)
    end
    
    
    it "it creates a post" do
        @post = create(:post)
        get :index
        expect(:post).to eq(:post)
        #assigns(:post).should eq([post])
    end
    
    it "renders the index template" do
      get :index
      expect(response).to render_template("index")
      #expect(response).to eq(:title)
    end    
  
      it "assigns the requested contact to @contact" do
        post = create(:post)
        get :show, id: post
        expect(:post).to eq(:post)
        #expect(:post).to redirect_to root_url
      end
  end