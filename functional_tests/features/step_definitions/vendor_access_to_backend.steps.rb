Then(/^a should access backend with vendor priveleges$/) do
  sleep(3)
  on_page(ProductsPage).greeting_vendor
end