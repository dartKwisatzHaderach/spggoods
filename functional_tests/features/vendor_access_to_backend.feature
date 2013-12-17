@sign_in
Feature: vendor access to backend
        As a vendor
        I want to sign in
        So I can get additional features
        
        Scenario: Pass 'Sign in' form
                Given I am a registered user on 'Sign in' page
                When I fill 'Email' field with "firstvendor@spggoods.com"
                  And I fill 'Password' field with "vendor"
				  And push 'Login' button
				Then a should access backend with vendor priveleges
