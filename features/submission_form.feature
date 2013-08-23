Feature: Submission Form
	
	Scenario: An unauthenticated user visits the Submission Form
		Given The user visiting the Submission Form is not signed in
		When the user visits the page
		Then s/he is gifted a 403 error.

	Scenario: A user with an invalid but authenticated account visits the Submission Form
		Given A user with an invalid but authenticated account visits the Submission Form
		When the user visits the Submission Form
		Then s/he is gifted a 403 error
			And informed the account is invalid

	Scenario: An authenticated user with a valid account visits the Submission Form
		Given An Authenticated user with a valid account visits the Submission Form page
		When the user visits the page
		Then s/he sees a series of forms and drop downs for | Region | Constellation | System | Security Level | Planet | Moon | Tower Corporation | Tower Type | Tower State | State Ends | Resource 1 | Resource 1 Abundance | Resource 2 | Resource 2 Abundance | Resource 3 | Resource 3 Abundance | Resource 4 | Resource 4 Abundance | Resource 5 | Resource 5 Abundance |

	Scenario: A user submits a new valid moon scan
		Given The user visits the Submission Form
			And is authenticated with a valid account
		When the user fills out the form with valid information
			And clicks the submit button
		Then s/he should see a successful submission notice
			And an empty submission form

	Scenario: A user submits an invalid moon scan
		Given The user visits the submission form
			And is authenticated with a valid account
		When the user fills out the form with invalid information
			And clicks the submit button
		Then s/he should see an error notice
			And the scan is not saved to the database
			And the error is logged for later review

	Scenario: A user submits a moon scan for a pre-scanned moon
		Given The user visits the submission form
			And is authenticated with a valid account
		When the user fills out the form with an already scanned moon
			And clicks the submit button
		Then s/he should see an error notice
			And the scan is not saved to the database
			And the error is logged for later review

	Scenario: The user clicks on the CSV Template file link
		Given The user visits the submission form
			And is authenticated with a valid account
		When the user clicks on the CSV Template file link
		Then the user is served a CSV template file for download
			And directed to a guide page for using the CSV file properly

	Scenario: A user uploads a CSV file with all new scans
		Given The user visits the submission form
			And is authenticated with a valid account
		When the user attaches a CSV file
			And clicks the submit button
		Then s/he should see a notification of upload
			And the CSV should be parsed

	Scenario: A valid authenticated user uploads a properly formatted CSV file with collisions
		Given The user visits the submission form
			And uploads a CSV file with some data on already scanned moons
		When the CSV file is parsed
		Then the collisions are discarded
			And the new data is added to the database
			And the user is given an error for the collisions
			And the collisions are logged for later review

	Scenario: A valid authenticated user visits the submission page
		Given The user visits the submission form
		Then the user should see links to the home page, moon database, tower update form and accessible dashboards.