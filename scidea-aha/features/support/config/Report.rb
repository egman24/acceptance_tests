class Report

  @@content     = []
  @@javascript  = []

  def self.add_content(content)
    @@content << content
  end

  def self.add_javascript(javascript)
    @@javascript << javascript
  end

  def self.generate(file)

    html_report   = "#{file}/html_test_report.html"
    
    report = File.open(html_report, 'w')

    report.puts "<!DOCTYPE html>                                                                            "
    report.puts "<html>                                                                                     "
    report.puts "<head>                                                                                     "
    report.puts "        <meta charset='utf-8'>                                                             "
    report.puts "        <title>Test Report</title>                                                         "
    report.puts "        <script type='text/javascript' src='jquery.js'></script>                           "
    report.puts "        <script type='text/javascript'>                                                    "
    report.puts "          $(document).ready(function() {                                                   "
        
    @@javascript.each { |x| report.puts x }

    report.puts "          });                                                                              "
    report.puts "        </script>                                                                          "
    report.puts "</head>                                                                                    "
    report.puts "<body>                                                                                     "

    @@content.each { |x| report.puts x }

    report.puts "</body>                                                                                    "
    report.puts "</html>                                                                                    "

  end

end
