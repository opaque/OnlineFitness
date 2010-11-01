
Feature: User input profile

	As a user
	I can view and edit my profile data
	So that I can view it later
	
	Scenario: User views correct data in profile
		Given user John Smith exists 
		When I am on the edit profile page for John Smith
		Then "user_name" is "John Smith"
		  And "user_birthday" is "March 28, 1980"
		  And "user_weight" is "150"
		  And "user_height" is "70"
		  And "user_gender" is "male" 

	Scenario: User edits data in profile
		Given user John Smith exists 
		When I am on the edit profile page for John Smith
		  And I fill in "user_weight" with "145"
		  And I press "Update"
		Then I should see "Successfully Updated"
