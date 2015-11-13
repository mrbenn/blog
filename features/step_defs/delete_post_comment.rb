require 'capybara/cucumber'

#Cannot Delete a Comment

When(/^I am on the comment page of a post$/) do 
  click_on 'New Post'
end

Then(/^the delete comment button is not available$/) do
  expect(page).to_not have_text("Delete")
end

#Can Delete a comment

When(/^I login as Admin login$/) do 
  click_on 'Admin Login'
  fill_in 'Email', :with => 'ben@ben.com'
  fill_in 'Password', :with => 'testtest'
  click_on 'Log in'
end

When(/^I am on the comment page on a post$/) do
  find_link 'New Post'
  click_link('New Post')  
end

When(/^select the Delete button$/) do
  click_link('Delete')
  page.driver.browser.switch_to.alert.accept
  expect(page.evaluate_script('window.confirmMsg')).to eq('Are you sure?')
  #expect(page).to have_text("The page at localhost:3000 says:")
  accept_confirm do
      click_link 'Ok'
    end
end

#def wait_for(wait = 8)
#     timeout = Time.new + wait
#     while (Time.new < timeout)
#       return if (yield)
#end
#     raise "Condition not met within #{wait} seconds"
#   end


When(/^I ok the dialog$/) do

end

Then(/^the comment is deleted$/) do
  expect(page).to_not have_text("A new comment")
end