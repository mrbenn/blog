require 'capybara/cucumber'

#Cannot Delete a Comment

When(/^I am on the comment page of a post$/) do 
  click_on 'A New Post'
end

Then(/^the delete comment button is not available$/) do
  expect(page).to_not have_text("Delete")
  #find('Delete').click
end

#Can Delete a comment

When(/^I login as Admin login$/) do
  
  click_on 'Admin Login'
  fill_in 'Email', :with => 'ben@ben.com'
  fill_in 'Password', :with => 'testtest'
  click_on 'Log in'
end

When(/^I am on the comment page on a post$/) do
  click_link('A New Post')
  
end

When(/^select the Delete button$/) do
  click_link('Delete', match: :first)
  accept_confirm do
      click_link 'Ok'
    end
end

When(/^I ok the dialog$/) do

end

Then(/^the comment is deleted$/) do
  expect(page).to_not have_text("A new comment")  
end