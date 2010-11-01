		
Feature: User input profile

	As a user
	I can input my profile data
	So that I can view it later
	
	Scenario: User inputs data into profile
		Given I am on the new profile page
		When I fill in "user_name" with "John Smith"
		  And I select "March 28, 1980" as the date
		  And I fill in "user_weight" with "150"
		  And I fill in "user_height" with "70"
		  And I select "Male" from "user_gender"
		  And I press "Create"
		Then I should see "User was successfully created."
				
	
