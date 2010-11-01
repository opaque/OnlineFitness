Feature: User views graph 

	As a user
	I want to view my data in the form of graphs
	So that I can organize my workout
	
	Scenario: User views default graph
		Given I am not yet on the graph page
		When I click on the graph tab
		Then I should see my workout data presented on the default graph
		
	Scenario: User chooses to view alternative graph
		Given I am in the graph tab
		When I click on an alternative graph link
		Then I should see my workout data presented in that format
