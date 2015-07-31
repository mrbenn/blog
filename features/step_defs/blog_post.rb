#Add a new post
When(/^I am logged in as Admin$/) do
  click_on 'Admin Login'
  fill_in 'Email', :with => 'ben@ben.com'
  fill_in 'Password', :with => 'testtest'
  click_on 'Log in'
end

When(/^I select the new post button$/) do
  click_on 'New Post'
end

When(/^I fill in the title with body$/) do
  fill_in 'post_title', :with => 'A new comment'
  fill_in 'post_body', :with => 'Body'
end

When(/^select the create post button$/) do 
   click_on 'Create Post'
end

Then(/^the new post is added$/) do
  expect have_content 'Submitted less than a minute Ago | Edit | Delete'
end