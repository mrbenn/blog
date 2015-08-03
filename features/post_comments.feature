@addcomm

Feature: Add Comments

	Scenario: Add a new comment
			
		And a blog post is present on the blog post page
		When I enter a valid value into Name field
		And I enter a valid comment into Body field
		And select the create comment button
		Then a new comment is added to the existing blog post