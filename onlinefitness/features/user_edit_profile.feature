
Feature: User input profile

	As a user
	I can view and edit my profile data
	So that I can view it later
	
	Scenario: User views correct data in profile
		Given user 1 exists 
		When I am on the edit profile page for user 1
		Then "user_name" should be "John Smith"
		  And "user_birthday" should be "March 28, 1980"
		  And "user_weight" should be "150"
		  And "user_height" should be "70"
		  And "user_gender" should be "male" 

	Scenario: User edits data in profile
		Given user 1 exists 
		When I am on the edit profile page for user 1
		  And I fill in "user_weight" with "145"
		  And I press "Update"
		Then I should see "User was successfully updated."
