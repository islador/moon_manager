Feature: Moon Database

	Scenario: The API presents a new POS
		Given The API is functional
		When The API is checked
			And it reveals a new POS or a changed POS
		Then update the Moon Database to include the new POS

	Scenario: A user filters the database
		Given A user visits the Moon Database page
			And the user has a valid and authenticated account
		When the user selects a Region
			And certus peribus
		Then the user should see all the moons in that region

	Scenario: An unauthenticated user visits the Moon Database page
		Given The user visiting the moon database page is not signed in
		When the user visits the page
		Then s/he is gifted a 403 error.