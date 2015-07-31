Feature: Admin user adds new post

	Scenario: 
	
		When I select the New Post button
		And I enter the <Title> info with <bodytext>
		And select the Create Post button  
		Then the new post is added to the All Post page