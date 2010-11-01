Feature: User views personal calendar

	As a user
	I want to be able to view my personal calendar
	So that I can check my schedule
	
	Scenario: User chooses to view personal calendar
		Given I am not yet on the calendar page
		When I click on the calendar tab
		Then I should see my calendar