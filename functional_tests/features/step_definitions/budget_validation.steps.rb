Given(/^I am sign in as admin witn "(.*?)", "(.*?)"$/) do |email, password|
  visit(SignInPage)
  on_page(SignInPage).sign_in_with(email, password)
end

When(/^I open 'Add customer' page$/) do
  visit(AddCustomerPage)
  sleep(2)
end

When(/^push 'Add budget' button when 'Budget Name', 'Frequancy', 'Balance' fields are empty$/) do
  on_page(AddCustomerPage).add_budget
end

Then(/^I should see validation error on page$/) do
  on_page(AddCustomerPage).budget_name_err
  on_page(AddCustomerPage).balance_err
end