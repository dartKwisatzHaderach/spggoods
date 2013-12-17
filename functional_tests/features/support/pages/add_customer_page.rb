class AddCustomerPage
  include PageObject

  page_url "http://test.interesnee.ru/admin/customers/add"

  link(:add_budget, :text => "+ Add")
  text_field(:budget_name_err, :class => "budgetPO mt10 mb10 error", :name => "budgetName")
  text_field(:balance_err, :class => "float-left mt10 mb10 balance error", :name => "balance")

end
