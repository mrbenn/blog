@newblog

#Add a new post
When(/^I am logged in as Admin$/) do
  @home = Home.new#("home","admin_login")
  @home.admin_btn.click


  @admin = Admin.new #("admin, email, password, login_btn")
  @admin.email.set "ben@ben.com"
  @admin.password.set "testtest"
  @admin.login_btn.click

end

When(/^I select the new post button$/) do
  @admin.new_btn.click
end 

When(/^I fill in the title and body$/) do
  @admin.title.set "look at this"
  @admin.body.set "something"
end

When(/^select the create post button$/) do 
   @admin.create_btn.click
end

Then(/^the new post is added$/) do
  expect(@admin.page).to have_content 'Submitted less than a minute Ago | Edit | Delete'
  click_on 'Logout'
end

#New Post not available

When(/^not logged in as admin$/) do
  @admin = Admin.new
  expect(@admin.page).to have_content 'Admin Login'  
  #@admin.hey
end

Then(/^the New Post button is not available$/) do
  expect(@admin.page).to_not have_content 'New Post'
end