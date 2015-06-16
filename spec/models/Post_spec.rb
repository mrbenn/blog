require 'spec_helper'

describe Post, :type => :model do
  it "is valid with title and body" do 
    expect(build(:post)).to be_valid
  end 
  
  it "is not valid without title" do
    expect(build(:post, title: nil)).to_not be_valid
  end
  
  it "is not valid without body" do
    expect(build(:post, body: nil)).to_not be_valid
  end
  
end