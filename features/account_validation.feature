Feature: Account Validation

	Scenario: A user creates an account with valid information
		Given a user visits the account creation page
		When s/he submits valid information
			And the API confirms s/he is an alliance member
		Then s/he should recieve an account

	Scenario: A user creates an account with invalid information
		Given a user visits the account creation page
		When s/he submits invalid information
		Then s/he should recieve an invalid registration warning
			And the account should not be created
			And the details of the attempt should be logged

	Scenario: A user's API is no longer valid
		Given a user with an existing account's API says s/he has left the alliance
		When the API is queried
		Then the account is invalidated

	Scenario: A user's account is invalid
		Given A user has an invalid account
		When the user visits a page other then the sign in/out page
		Then the user is informed their account is invalid with the reason
			And the page renders a 403 error