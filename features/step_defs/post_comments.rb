@dev
require 'capybara/cucumber'

Given(/^a blog post is present on the blog post page$/) do
 
  click_on 'Admin Login'
  fill_in 'Email', :with => 'ben@ben.com'
  fill_in 'Password', :with => 'testtest'
  click_on 'Log in'
  click_on 'New Post'
  fill_in 'post_title', :with => 'A New Post'
  fill_in 'post_body', :with => 'Body'
  click_on 'Create Post'
 
end

#When(/^I select a blog post$/) do
#  click_on 'A New Post' 
#end

When(/^I enter a valid value into Name field$/) do
  fill_in 'comment_name', :with => 'A new comment'
end

When(/^I enter a valid comment into Body field$/) do
  fill_in 'comment_body', :with => 'Its a new comment'
end

When(/^select the create comment button$/) do
  click_on 'Create Comment'
end

Then(/^a new comment is added to the existing blog post$/) do
   expect have_content 'A new comment'
end