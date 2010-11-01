Feature: Deletes workout schedule

	As a user
	I can delete a workout schedule
	So that I can't see it later
	
	Scenario: User deletes workout form
		Given schedule 1 exists 
		When I am on the edit workout schedule page for schedule 1
		  And I follow "Remove"
		Then I should see "Workout was successfully removed."
	