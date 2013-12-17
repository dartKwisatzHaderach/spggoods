class SignInPage
  include PageObject
  
  page_url "http://test:interesnee@test.interesnee.ru/admin"

  text_field(:user_email, :name => "email")
  text_field(:password, :name => "password")

  div(:login, :css => ".big-blue-button.float-right.mr68")
  
  def sign_in
    self.execute_script("document.getElementsByClassName('big-blue-button float-right mr68')[0].click()")
  end
  
  def sign_in_with(username, password)
    self.user_email = username
    self.password = password
    self.execute_script("document.getElementsByClassName('big-blue-button float-right mr68')[0].click()")
    sleep(3)
  end

end
