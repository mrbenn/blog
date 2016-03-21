class PostsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  def index
    @posts = Post.all.order('created_at DESC')
  end
  
  #Show a new post
  def new
    @post = Post.new
  end
  
  #create a new tweet
  def create
    @post = Post.new(post_params)
    
    if @post.save
      redirect_to @post
    else 
      render 'new'
    end
  end
  
  #show a single post
  def show
    @post = Post.find(params[:id])
  end

  #Show an edit of a post
  def edit  
    @post = Post.find(params[:id])
  end
  
  #update a post
  def update
    @post = Post.find(params[:id])
    
    if @post.update(params[:post].permit(:title, :body))
      redirect_to @post
    else
      render 'edit'
    end
  end
  
  #destory a post
  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    
    redirect_to root_path
  end
  
  private
    def post_params
      params.require(:post).permit(:title, :body)
    end
  end