@deletepost

Feature: Delete post comments
	
	Scenario: Cannot delete a comment unless Admin Login
	
		When I am on the comment page of a post
		Then the delete comment button is not available
		
	Scenario: Can delete a comment
	
		When I login as Admin login
		And I am on the comment page on a post
		And I delete the comment
		Then the comment is deleted