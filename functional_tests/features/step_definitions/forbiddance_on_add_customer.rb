When(/^I am open 'Add customer' page with URL "(.*?)"$/) do |url|
  @browser.get(url)
end

Then(/^I find that I have no rights to acess 'Add customer' page$/) do
  sleep(3)
  on_page(AddCustomerPage).add_budget?.should be false
end

