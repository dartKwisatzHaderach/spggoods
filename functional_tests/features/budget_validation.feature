@add_customer
Feature: budget validation
        As an admin
        I want to add budget
        And I want be shure that budget is correct
        
        Scenario: Check budget validation
                Given I am sign in as admin witn "admin@spggoods.com", "admin"
				When I open 'Add customer' page
					And push 'Add budget' button when 'Budget Name', 'Frequancy', 'Balance' fields are empty
				Then I should see validation error on page
