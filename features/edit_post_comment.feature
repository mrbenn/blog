@edit
Feature: Editing posts

		Scenario: Editing existing comment
		
			When I am logged in as admin
			And I edit an existing post
			And I select the update post button
			Then the update to the post is saved
						
		Scenario: Cannot edit existing comment
		
			Given I am on the home page
			When I am not logged in on a blog post	
			Then the edit button is not available