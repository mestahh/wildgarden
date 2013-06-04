Feature: It is possible to delete plants

	Scenario: Delete a plant
	
		Given I have a plant
		When I visit the all plants page
		And I click on the delete link
		Then the plant should be deleted