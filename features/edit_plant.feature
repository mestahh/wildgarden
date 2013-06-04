Feature: It is possible to edit the plants data

	Scenario: Edit plant
	
		Given I have a plant
		When I visit the edit plant path
		And I change the plants data
		Then the data should be changed
		And I should see the plant detail page