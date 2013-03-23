class Screenshot

  def initialize(browser, section)
    @browser = browser
    @section = section
  end

  def take(title)
    @browser.screenshot.save "#{Application::SESSION}/#{Time.now.strftime('%H%M%S%L%N')}_#{@section}_#{title}.png"
  end

end