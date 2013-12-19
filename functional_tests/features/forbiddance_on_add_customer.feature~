@vendor
Feature: forbiddance on add customer
        As an vendor
        I have no rights to create customer
        
        Scenario: try to add customer
			Given I am sign in as vendor witn "firstvendor@spggoods.com", "vendor"
				And I am on 'Products' page
			When I am open 'Add customer' page with URL "http://test.interesnee.ru/admin/customers/add"
			Then I find that I have no rights to acess 'Add customer' page
