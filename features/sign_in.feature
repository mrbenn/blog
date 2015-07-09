Feature: Signs user in

	Scenario: Admin user sign in
	
		Given I'm on the Blog home page
		When I select the Admin login
		And enter valid Admin login details
		Then I am logged in as an Admin user 