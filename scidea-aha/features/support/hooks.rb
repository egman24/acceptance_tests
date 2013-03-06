require 'watir-webdriver'

Before do
  @browser = Watir::Browser.new :chrome
  #@website = "http://qa.aha.scitent.com"
  @website = "http://0.0.0.0:3000"
end


After do
  @browser.close
end