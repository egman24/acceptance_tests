module Application

  #General

  $WEBSITE = "http://0.0.0.0:3000" # "http://qa.aha.scitent.com"
  $BROWSER = :chrome               # :firefox, :ie, :safari...

  #Screenshots

  SESSION = File.expand_path("./screenshots")

  #Registration

  ## TODO read in files from application dir if they exist (do the short circut ||, 'read file as array or take the test version')

  COUNTRIES_DOMESTIC      = ['United States', 'Puerto Rico'] #pull in countries from the textfile 'new countries.txt' and traverse the structure to pull out what i need
  COUNTRIES_INTERNATIONAL = ['Aruba', 'Australia'] #pull in countries from the textfile 'new countries.txt' and traverse the structure to pull out what i need
  COUNTRIES_ALL           = COUNTRIES_DOMESTIC | COUNTRIES_INTERNATIONAL
  SALUTATIONS             = %w(Dr. Mrs. Mr. Ms.)

end
