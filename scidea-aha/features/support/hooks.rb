require 'watir-webdriver'

Before do
  @browser = Watir::Browser.new :chrome

  directory = File.expand_path("./screenshots")
  @session = "#{directory}/#{Time.now.strftime('%Y-%m-%d_%H%M%S')}"

  Dir::mkdir("screenshots") if not File.directory?("screenshots")
  Dir::mkdir(@session) if not File.directory?(@session)
end


After do
  @browser.close

  puts "==> Visit report.html @ file:"
end