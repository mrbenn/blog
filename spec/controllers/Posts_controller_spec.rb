
RSpec.describe PostsController, :type => :controller do

    it "responds successfully" do
      get :index
      expect(response.status).to eq(200)
    end
    
    it "creates a new post" do
      
      @Post =  Post.new
    end
    
          
  end