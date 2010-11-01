Feature: User edits workout data

	As a user
	I can edit workout data
	So that I can view it later
	

	Scenario: User edits existing workout data form 
		Given schedule 1 exists
		When I am on the edit workout date page for schedule 1
		And I fill in "Actual Reps" with "7" 
		And I fill in "Actual Sets" with "3"
		And press "Update"
		Then I should see "Workout was successfully updated."