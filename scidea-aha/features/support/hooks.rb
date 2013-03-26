require 'watir-webdriver'

Before do
  @browser = Watir::Browser.new :chrome

  Dir::mkdir("screenshots") if not File.directory?("screenshots")
  Dir::mkdir("screenshots_archive") if not File.directory?("screenshots_archive")
end


After do
  @browser.close
end

at_exit do
  puts "==> Visit report.html @ file:"

  @new_file = "screenshots_archive/#{Time.now.strftime('%Y-%m-%d_%H%M%S')}"
  Dir::mkdir(@new_file) if not File.directory?(@new_file)

  Dir.glob('screenshots/**/*.png') do |screen|
    original_file = File.absolute_path screen

    FileUtils.mv(original_file, "#{@new_file}/#{File.basename screen}")
  end

  Report.generate(@new_file)

end