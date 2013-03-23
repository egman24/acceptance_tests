class User

  # TODO How do I represent the difference between a 'registered' user and a 'guest' user in my object space, will i need factories for registered?
  # TODO Use inheritance to make user ROLES and TYPES (sa, cm, author,...) etc... on the fly populate them in the db with populator or factory girl
  # TODO Is there a DRYer way to instantiate domestic/intl users than passing the proper array in as an initialize parameter? (each time i create user i have to remember to select correct list)

  attr_reader :birthdate, :country, :email, :first_name, :last_name, :password, :salutation

  def initialize(attributes={})

    if /domestic/i.match(attributes[:country])
      @country = Application::COUNTRIES_DOMESTIC.sample
    elsif /international/i.match(attributes[:country])
      @country = Application::COUNTRIES_INTERNATIONAL.sample
    else
      @country = Application::COUNTRIES_ALL.sample
    end

    @birthdate    = attributes[:birthdate]    || Time.at(0.0 + rand * (Time.now.to_f - 0.0.to_f)).to_date
    @email        = attributes[:email]        || Faker::Internet.email #at some point faker may fail duplicates in db?)
    @first_name   = attributes[:first_name]   || Faker::Name.first_name
    @last_name    = attributes[:last_name]    || Faker::Name.last_name
    @password     = attributes[:password]     || "password"
    @salutation   = attributes[:salutation]   || Application::SALUTATIONS.sample
  end

  #TODO: add different user types by OOP or selection -- they can be chosen during the step definitions and then passed into the pages to do work
  # example -- user_factory, user_mock/stub; i can create any type of user I want on the fly to suit the test situation i need it for

  def in_database

  end

end