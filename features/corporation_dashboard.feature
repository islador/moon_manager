Feature: Corporation Dashboard

	Scenario: An unauthorized user visits a corporation dashboard
		Given A unauthorized user visits a corporation dashboard
		When the user visits a Corporation Dashboard page
		Then the user recieves a 403 error
			And the incident is logged with relevant details.

	Scenario: An authorized user with an invalid account visits a corporation dashboard
		Given An authorized user with an invalid account visits a corporation dashboard
		When the user visits a corporation dashboard page
		Then the user recieves a 403 error
			And the user is informed of why their account is invalid
			And the incident is logged with relevant details.

	Scenario: A valid authenticated user visits their Corporation's Dashboard
		Given The user visits a Corporation Dashboard
		Then the user should see links to the home page, moon database, tower update form and accessible dashboards.
			And the user should see a list of all their corporation's towers displaying the state, location, fuel level, current strong level (units and hours), remaining time if the tower is reinforced and the time (UTC) when it exits.

	Scenario: A valid authenticated user edits the name of one of their corporation's tower's on their corporation's Corporation Dashboard
		Given The user visits their corporation's Corporation Dashboard
		When The user selects a tower's name field
			And edits the name
			And clicks enter or the submit button
		Then the name is updated in the corporation dashboard
			And the user is informed of a successful edit

	Scenario: 