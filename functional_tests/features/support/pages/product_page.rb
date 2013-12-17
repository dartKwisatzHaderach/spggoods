class ProductPage
  include PageObject
  include MainMenu

  text_field(:product_name, :name => "name")
  link(:save, :text => "Save")
end
