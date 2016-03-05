require 'spec_helper'


describe PostsController, :type => :controller do 
  
  
  it "loads all of the posts into @posts" do
    
    @post = create(:post)
    
    
    
    #expect(:post).to have_attributes([:title, :body])
    
    #post = post(:post)
    #get :new
    
    
    
    #post1, post2 = Post.create!, Post.create!
    #get :index

    #expect(assigns(:posts)).to match_array([post1, post2])
  end

    it "responds successfully" do
      get :index
      expect(response.status).to eq(200)
    end
    
    it "renders the index template" do
      get :index
      expect(response).to render_template("index")
    end
     
    it "creates a new post" do
           
      #    post = factory(:post)
      #    get :index
      #    assigns(:posts).should eq([post])
      #@Post =  Post.new()
      #expect(response).be_a_new(post)
    end
          
  end