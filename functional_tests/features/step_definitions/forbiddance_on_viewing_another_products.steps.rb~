When(/^I am open product with URL "(.*?)"$/) do |url|
  @browser.get("http://test.interesnee.ru/admin/products/add?productID=16")
end

Then(/^I find forbiddance on viewing another products$/) do
  sleep(2)
  on_page(ProductsPage).table_header_product_name
  on_page(ProductPage).save?.should be false
end

