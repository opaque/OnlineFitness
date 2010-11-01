Feature: User views personal calendar

	As a user
	I want to be able to view my personal calendar
	So that I can check my schedule
	
	Scenario: User chooses to view personal calendar
		Given user 1 exists
		And I am on the profile page for user 1
		When I go to the calendar page for user 1
		Then I should be on the calendar page for user 1
		
	Scenario: User clicks personal calendar to add workout
		Given user 1 exists
		And I am on the calendar page for user 1
		When I follow "Add Monday" 
		Then I should be on the new workout schedule page for user 1
		
	Scenario: User clicks personal calendar to edit workout
		Given user 1 exists
		And schedule 1 for user 1 exists
		And I am on the calendar page for user 1
		When I follow "Edit Monday"
		Then I should be on edit workout schedule page for schedule 1 for user 1
		