Given(/^I am sign in as admin$/) do
  visit(SignInPage)
  on_page(SignInPage).login_with("admin@spggoods.com", "admin")
end

When(/^I open 'Add customer' page$/) do
  visit(AddCustomerPage)
end

When(/^push 'Add budget' button when 'Budget Name', 'Frequancy', 'Balance' fields are empty$/) do
  on_page(AddCustomerPage).add_budget
end

Then(/^I should see validation error on page$/) do
  on_page(AddCustomerPage).budget_name_err
  on_page(AddCustomerPage).balance_err
end