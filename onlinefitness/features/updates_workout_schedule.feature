Feature: Updates workout schedule

	As a user
	I can update a workout schedule
	So that I can input workout data later
	
	Scenario: User views existing workout schedule
		Given user 1 exists
		  And schedule 1 for user 1 exists 
		When I am on the edit workout schedule page for schedule 1 for user 1
		Then "workout_expectedreps" is "5"
		  And "workout_expectedsets" is "1"
		  And "workout_exercise" is "Biceps"
		  And "workout_date" is "January 2, 2010"

	Scenario: User edits existing workout schedule 
		Given schedule 1 exists
		  And schedule 1 for user 1 exists
		When I am on the edit workout schedule page for schedule 1 for user 1
		  And I select "Triceps" from "workout_exercise"
		  And I fill in "workout_expectedreps" with "30"
		  And I fill in "workout_expectedsets" with "3"
		  And I select "January 1, 2010" as the date
		  And I press "Update"
		Then I should see "Workout was successfully updated."