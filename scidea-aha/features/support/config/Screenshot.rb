class Screenshot

  def initialize(browser, section)
    @browser = browser
    @section = section
  end

  def captures(title, step)

    relative_file = "#{Time.now.strftime('%H%M%S%L%N')}_#{@section}_#{title}.png"
    file          = "#{Application::SESSION}/#{relative_file}"

    take(file)
    embed(relative_file, step)
  end

  private

  def take(file)
    @browser.screenshot.save file
  end

  def embed(relative_file, step)
    #TODO: refactor to embed all at once at the end, so that browser testing is quicker
    #TODO: refactor with erb/haml, templating language?
    content    = "<button type='button' id='#{relative_file.gsub('.', '_').gsub('[', '_').gsub(']', '_')}'>#{step}</button> <br> <div id='#{relative_file.gsub('.', '_').gsub('[', '_').gsub(']', '_')}_div' style='display:none'><img src='#{relative_file}' alt='#{step}' height='800' width='600'></div> <br>"
    javascript = "$('button##{relative_file.gsub('.', '_').gsub('[', '_').gsub(']', '_')}').click(function() {$('##{relative_file.gsub('.', '_').gsub('[', '_').gsub(']', '_')}_div').toggle();});"

    Report.add_content(content)
    Report.add_javascript(javascript)
  end

end
