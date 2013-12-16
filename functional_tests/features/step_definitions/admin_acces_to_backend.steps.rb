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
  on_page(SignInPage).execute_script("document.getElementsByClassName('big-blue-button float-right mr68')[0].click()")
end

Then(/^a should access backend with admin priveleges$/) do
  sleep(3)
  on_page(AdminPanelPage).greeting
end

