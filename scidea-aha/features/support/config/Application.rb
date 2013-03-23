module Application

  #General

  $WEBSITE = "http://0.0.0.0:3000" #@website = "http://qa.aha.scitent.com"

  #Screenshots

  SESSION = File.expand_path("./screenshots")

  #Registration

  COUNTRIES_DOMESTIC      = ['United States'] #pull in countries from the textfile 'new countries.txt' and traverse the structure to pull out what i need
  COUNTRIES_INTERNATIONAL = ['Aruba'] #pull in countries from the textfile 'new countries.txt' and traverse the structure to pull out what i need
  COUNTRIES_ALL           = COUNTRIES_DOMESTIC.concat(COUNTRIES_INTERNATIONAL)
  SALUTATIONS             = %w(Dr. Mrs. Mr. Ms.)

end