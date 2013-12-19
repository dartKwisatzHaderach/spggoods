@products
Feature: change product name
        As an admin
        I want to sign in
        And rename product
        
        Scenario: rename product
			Given I am sign in as admin witn "admin@spggoods.com", "admin"
				And I am on 'Products'page
			When I am open product form
				And change product name to "New product name"
				And save changes
			Then I should see new product name on 'Products' page
			Then Rollback name to "Old name"
