Given(/^I am on 'Products'page$/) do
  visit(ProductsPage)
  on_page(ProductsPage).new_product_name?.should be false
end

When(/^I am open product form$/) do
  on_page(ProductsPage).edit_first_product
end

When(/^change product name to "(.*?)"$/) do |name|
  @name = name
  on_page(ProductPage).product_name = @name
end

When(/^save changes$/) do
  on_page(ProductPage).save
end

Then(/^I should see new product name on 'Products' page$/) do
  sleep(2)
  on_page(ProductsPage).new_product_name
end

Then(/^Rollback name to "(.*?)"$/) do |old_name|
  on_page(ProductsPage).edit_first_product
  on_page(ProductPage).product_name = old_name
  on_page(ProductPage).save
end