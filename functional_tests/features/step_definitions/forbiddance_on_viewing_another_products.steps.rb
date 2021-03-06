Given(/^I am sign in as vendor witn "(.*?)", "(.*?)"$/) do |email, password|
  visit(SignInPage)
  on_page(SignInPage).sign_in_with(email, password)
end

When(/^I am open product with URL "(.*?)"$/) do |url|
  @browser.get(url)
end

Then(/^I find forbiddance on viewing another products$/) do
  sleep(2)
  on_page(ProductsPage).table_header_product_name
  on_page(ProductPage).save?.should be false
end

