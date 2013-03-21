require 'watir-webdriver'

Before do
  @browser = Watir::Browser.new :chrome
  #@website = "http://qa.aha.scitent.com"
  @website = "http://0.0.0.0:3000"

  directory = File.expand_path("./screenshots")
  @session = "#{directory}/#{Time.now.strftime('%Y-%m-%d_%H%M%S')}"

  Dir::mkdir("screenshots") if not File.directory?("screenshots")
  Dir::mkdir(@session) if not File.directory?(@session)
end


After do
  @browser.close

  `cp report.rhtml #{@session}/report.rhtml`
  `cp main.css #{@session}/main.css`

  raw_report  = "#{@session}/report.rhtml"
  html_report = "#{@session}/report.html"

  `cd #{@session} && ruby #{raw_report} >> #{html_report}`

  puts "==> Visit report.html @ file://#{@session}/report.html"
end