@product
Feature: forbiddance on viewing another products
        As an vendor
        I have access only for my own products
        
        Scenario: try to view another products
			Given I am sign in as admin witn "firstvendor@spggoods.com", "vendor"
				And I am on 'Products' page
			When I am open product with URL "http://test.interesnee.ru/admin/products/add?productID=16"
			Then I find forbiddance on viewing another products
