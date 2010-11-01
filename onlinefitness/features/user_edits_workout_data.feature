Feature: User edits workout data

	As a user
	I can edit workout data
	So that I can view it later
	

	Scenario: User edits existing workout data form 
		Given user 1 exists 
		  And schedule 1 for user 1 exists
		When I am on the edit workout schedule page for schedule 1 for user 1
		  And I fill in "workout_actualreps" with "7" 
		  And I fill in "workout_actualsets" with "3"
		  And press "Update"
		Then I should see "Workout was successfully updated."