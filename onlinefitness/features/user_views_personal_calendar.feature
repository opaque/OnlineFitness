Feature: User views personal calendar

	As a user
	I want to be able to view my personal calendar
	So that I can check my schedule
	
	Scenario: User chooses to view personal calendar
		Given I am on the profile page
		When I go to the calendar page
		Then I should see my calendar
		
	Scenario: User clicks personal calendar to add workout
		Given I am on the calendar page for user 1
		And user 1 exists
		When I press "Add Monday" 
		Then I should be on the new workout schedule page
		
	Scenario: User clicks personal calendar to edit workout
		Given schedule 1 exists
		And user 1 exists
		And I am on the calendar page for user 1
		When I press "Edit Monday"
		Then I should be on edit workout schedule page for schedule 1
		