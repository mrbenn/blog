require 'capybara/cucumber'

Given(/^a blog post is present on the blog post page$/) do
  expect have_content 'New Post'
end

When(/^I select a blog post$/) do
  click_on 'A New Post' 
end

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