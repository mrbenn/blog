require 'spec_helper'


describe PostsController, :type => :controller do  
  
  it "ups the count when creating new post" do
    @post = create(:post)
    expect(Post.count).to eq(1)
  end

  it "it creates" do
    
    #@post = create(:post)    
    @post = Post.create()
    #byebug
    #expect(response).to eq(:title, :body)
    #create_account = Account.create(account: @acc, user: @user)
    
    #expect(Post.count) 
  end

    it "responds successfully" do
      get :index
      expect(response.status).to eq(200)
    end
    
    it "renders the index template" do
      get :index
      expect(response).to render_template("index")
      #expect(response).to eq(:title)
    end

  end