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

  def embed(file, step)
    #TODO: refactor to embed all at once at the end, so that browser testing is quicker
    #TODO: refactor with erb/haml, templating language?
    content     = "<button type='button' id='#{file}'>#{step}</button> <br> <div id='#{file}_div'><img src='smiley.gif' alt='Smiley face' height='42' width='42'></div> <br>"
    javascript = "$('button##{file}').click(function() {$('##{file}_div').toggle();});"

    Report.add_content(content)
    Report.add_javascript(javascript)
  end

end
