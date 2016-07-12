require 'capybara/cucumber'

#require 'factory_girl_rails'

When(/^I am on the comment page of a post$/) do 

  @home = Home.new #("home","admin_login")
  @home.admin_btn.click


  @admin = Admin.new #("admin, email, password, login_btn")
  @admin.email.set "ben@ben.com"
  @admin.password.set "testtest"
  @admin.login_btn.click
  #click_on 'New Post'

end

Then(/^the delete comment button is not available$/) do
  expect(@admin.page).to_not have_content 'Delete'
end

#Can Delete a comment

When(/^I login as Admin login$/) do 

  #@comment = build(:comment)
  @admin = Admin.new
  @admin.hey
  @home = Home.new#("home","admin_login")
  @home.admin_btn.click


  @admin = Admin.new #("admin, email, password, login_btn")
  @admin.email.set "ben@ben.com"
  @admin.password.set "testtest"
  @admin.login_btn.click

end

When(/^I am on the comment page on a post$/) do
  #main_content > div.post_wrapper > h2
  find_link 'look at this'
  click_link('look at this')
end

When(/^I delete the comment$/) do
  accept_alert do
    click_link('Delete')
  end
end            

Then(/^the comment is deleted$/) do 
  expect(page).to_not have_text("A new comment")
end