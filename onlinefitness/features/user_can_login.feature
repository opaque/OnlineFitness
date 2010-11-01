Feature: User can login

	As a user
	I want to login
	So that I can view my data
	
	Scenario: User logs in
		Given I am a user
		And I have a registered account
		When I enter in the correct username and password
		And I click "login"
		Then I should see my home page	

		


