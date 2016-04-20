require 'spec_helper'

describe Post, :type => :model do

  it "has a valid factory" do
    expect(build(:post)).to be_valid
  end 
  
  it "is not valid without title" do
    expect(build(:post, title: nil)).to_not be_valid
  end
  
  it "is not valid without body" do
    expect(build(:post, body: nil)).to_not be_valid
  end
  
#  it "returns a contacts full name as a string "
#  byebug
#  post = build(:post, title: "It's Me", body: "Yes yes yes") 
#  end

end