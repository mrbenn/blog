require 'capybara/cucumber'

When(/^I select the Admin login$/) do
  click_on 'Admin Login'
end

When(/^enter valid Admin login details$/) do
  fill_in 'Email', :with => 'ben@ben.com'
  fill_in 'Password', :with => 'testtest'
  click_on 'Log in'
end

Then(/^I am logged in as an Admin user$/) do
   expect have_content 'Signed in successfully.'
   click_on 'Logout'
end