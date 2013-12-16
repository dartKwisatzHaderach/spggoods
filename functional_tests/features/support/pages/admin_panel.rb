class AdminPanelPage
  include PageObject

  page_url "http://test.interesnee.ru/admin"

  span(:greeting, :text => "Nik Froehlich")

end
