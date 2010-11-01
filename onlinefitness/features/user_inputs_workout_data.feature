Feature: User inputs workout data

	As a user
	I can input workout data
	So that I can view it later
	
	Scenario: User inputs data into workout data form
		Given schedule 1 exists 
		When I am on the edit workout data page for schedule 1
		And I fill in "Actual Reps" with "8" 
		And "Actual Sets" with "3"
		And press "Enter"
		Then it should say "Successfully Entered"
		
	
	
