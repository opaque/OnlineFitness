Feature: Creates workout schedule

	As a user
	I can create a workout schedule
	So that I can input workout data later
	
	Scenario: User inputs data in the workout schedule
		Given user 1 exists
		  And I am on the new workout schedule page for user 1
		When I select "January 1, 2010" as the date
		And I select "Biceps" from "workout_exercise"
		And I fill in "workout_expectedreps" with "30"
		And I fill in "workout_expectedsets" with "3"
		When I press "Create"
		Then I should see "Workout was successfully created."