Given(/^I am a registered user on 'Sign in' page$/) do
  visit(SignInPage)
end

When(/^I fill 'Email' field with "(.*?)"$/) do |email|
  on_page(SignInPage).user_email = email
end

When(/^I fill 'Password' field with "(.*?)"$/) do |password|
  on_page(SignInPage).password = password
end

When(/^push 'Login' button$/) do
  on_page(SignInPage).sign_in
end

Then(/^a should access backend with admin priveleges$/) do
  sleep(3)
  on_page(ProductsPage).greeting_admin
end

