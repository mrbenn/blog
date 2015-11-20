include Base

Given(/^a blog post is present on the blog post page$/) do
  @home = Home.new#("home","admin_login")
  @home.admin_btn.click

  @admin = Admin.new #("admin, email, password, login_btn")
  @admin.email.set "ben@ben.com"
  @admin.password.set "testtest"
  @admin.login_btn.click
  @admin.new_btn.click
  @admin.title.set "look at this"
  @admin.body.set "something"
  @admin.create_btn.click
end

When(/^I enter a valid value into Name field$/) do
  @comment = Comments.new 
  @comment.create_btn.click
end

When(/^I enter a valid comment into Body field$/) do
  @comment.name.set "this is the name"
end

When(/^select the create comment button$/) do
  @comment.body.set "this is the body"
end

Then(/^a new comment is added to the existing blog post$/) do
   #expect(@comment).to be_displayed
   #expect have_content 'A new comment'
   expect(@comment).to have_content "A new comment"
end
