@edit

require 'capybara/cucumber'

#edit post

When(/^I am logged in as admin$/) do
  click_on 'Admin Login'
  fill_in 'Email', :with => 'ben@ben.com'
  fill_in 'Password', :with => 'testtest'
  click_on 'Log in'
end


When(/^I edit an existing post$/) do
  click_link('look at this', match: :first)
  expect have_content 'Submitted less than a minute Ago | Edit | Delete'
  click_on 'Edit'
  fill_in 'post_body', :with => 'Edited existing post'
end

When(/^I select the update post button$/) do 
  click_on 'Update Post'  
end

Then(/^the update to the post is saved$/) do  
  expect(page).to have_text("Edited existing post")    
end

#cannot

Given (/^I am on the home page/) do
  visit 'http://localhost:3000'
end

When(/^I am not logged in on a blog post/) do 
  click_link 'look at this'
end

Then(/^the edit button is not available$/) do  
  expect(page).to_not have_text("Submitted less than a minute Ago | Edit | Delete")    
end
