require 'watir-webdriver'



Before do
  @browser = Watir::Browser.new :chrome
  @website = "http://qa.aha.scitent.com"


end


After do
  @browser.close
end