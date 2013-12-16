Feature: admin access to backend
        As an admin
        I want to sign in
        So I can get additional features
        
        Scenario: Pass 'Sign in' form
                Given I am a registered user on 'Sign in' page
                When I fill 'Email' field with "admin@spggoods.com"
                  And I fill 'Password' field with "admin"
				  And push 'Login' button
				Then a should access backend with admin priveleges
