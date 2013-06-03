Feature: Features related the main page

	Scenario: The welcome page should be the main page
	
		When I visit the root
		Then I should see the welcome page
		
	Scenario: There should be a back link on the site
		
		When I visit the root
		And I click on the add plant link
		And click on the back link
		Then I should see the welcome page