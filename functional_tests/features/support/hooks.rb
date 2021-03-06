require 'selenium-webdriver'

Before do
  @browser = Selenium::WebDriver.for :firefox
end

After do |scenario|
  @browser.save_screenshot("reports/screenshots/#{scenario.__id__}.png")
  embed("screenshots/#{scenario.__id__}.png", "image/png", "Screenshot")
end

After do
  @browser.close
end
