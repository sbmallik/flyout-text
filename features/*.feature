@ignore @insider-link
Feature: Check the new insider link in the login flyout

Background:
	Given I have cleared browser cookies
		And I am on the USCP home page
		And I am able to see the USCP home page

Scenario: Check the Insider link after log in
	When I hover on the log in avatar
		And I click Log in in navigation fly out
	Then the log in page loads
	When I enter "ts_roch_0127astage@yopmail.com" in the "username" field
		And I enter "New1111" in the "password" field
		And I click log in button on SAM form
	Then I should be logged in to the home page
                And I should see the following text in the log in fly out "View $
#		And I should see the following text in the log in fly out "Manage your Newsletters"

#	And I should see "<modal_class>"
#	When I close the modal window
#	And I can click log out button
