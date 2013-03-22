class User

  # TODO How do I represent the difference between a 'registered' user and a 'guest' user in my object space, will i need factories for registered?
  # TODO Use inheritance to make user ROLES and TYPES (sa, cm, author,...) etc... on the fly populate them in the db with populator or factory girl
  # TODO Is there a DRYer way to instantiate domestic/intl users than passing the proper array in as an initialize parameter? (each time i create user i have to remember to select correct list)

  attr_reader :birthdate, :country, :email, :first_name, :last_name, :password, :salutation

  def initialize(countries)
    @birthdate              = Time.at(0.0 + rand * (Time.now.to_f - 0.0.to_f)).to_date
    @country                = countries.sample
    @email                  = Faker::Internet.email #at some point faker may fail duplicates in db?)
    @first_name             = Faker::Name.first_name
    @last_name              = Faker::Name.last_name
    @password               = "password"
    @salutation             = Application::SALUTATIONS.sample
  end


end