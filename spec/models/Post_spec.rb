require 'spec_helper'

describe Post do

  it "has a tile the matches 'New Post' " do
    post = Post.new(title: "New Post")
    
    #expect(Post.new).not_to be_empty should_be(Post)
    post.title.should match(/New Post \d/) 
     
  end
end