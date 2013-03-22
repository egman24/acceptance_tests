class Application

  #General

  WEBSITE = "http://0.0.0.0:3000" #@website = "http://qa.aha.scitent.com"

  #Screenshots

  SESSION = File.expand_path("./screenshots")

  #Registration

  DOMESTIC_COUNTRIES      = ['United States'] #pull in countries from the textfile 'new countries.txt' and traverse the structure to pull out what i need
  INTERNATIONAL_COUNTRIES = ['Aruba'] #pull in countries from the textfile 'new countries.txt' and traverse the structure to pull out what i need
  SALUTATIONS             = %w(Dr. Mrs. Mr. Ms.)

end