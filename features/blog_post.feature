@dev
Feature: Blog Post

	Scenario: Adding a new Blog Post
	
		When I am logged in as Admin
		And I select the new post button
		And I fill in the title with body
		And select the create post button
		Then the new post is added
	
	Scenario:  Not able to Add a new Blog Post
		
		