Feature: Add plant. With the help of this feature it is possible to add plants to the database.

	Scenario: Add plant
		
		Given I visit the add plant page
		When I fill in the form and submit it
		Then I should have a new plant in the database
		And should see the all plants page
		
	Scenario: Show plant
		
		Given I have a plant
		When I click on the show plant link
		Then I should see the plant detail page