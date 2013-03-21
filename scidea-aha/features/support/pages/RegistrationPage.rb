class RegistrationPage

  def initialize(browser)
    @browser = browser
  end

  def active_email_registration
    # use services like dispostable? (output the email addresses to check in test output?)
  end

  def bulk_registration(num_users)
    num_users.times do

    end
  end

  def domestic_registration
    @user = User.new(ApplicationConfig::DOMESTIC_COUNTRIES)
    fill_out_form
  end

  def international_registration
    @user = User.new(ApplicationConfig::INTERNATIONAL_COUNTRIES)
    fill_out_form
  end

  def navigate_to_page
    navigate_to_home_page
    click_signup
  end

  def submit_form
    click_to_register
  end

  private

  #######################
  ## Aggregate Actions ##
  #######################

  def fill_out_form
    select_country
    enter_email
    enter_email_confirmation
    enter_password
    enter_password_confirmation
    enter_first_name
    enter_last_name
    accept_terms_and_conditions
  end

  ####################
  ## Single Actions ##
  ####################


  #  AHA Specific   #
  #$$$$$$$$$$$$$$$$$#

  def accept_terms_and_conditions
    @browser.checkbox(:name => "agree", :value => "Terms").set
  end

  def select_country
    @browser.select_list(:id => "user_scidea_profile_country_id").select(@user.country)
  end

  def enter_email_confirmation
    @browser.text_field(:id => "user_email_confirmation").set(@user.email)
  end


  #  General #
  #$$$$$$$$$$#

  # TODO extract the DOM attribute values into single 'element' listing/inventory for quick changes or reuse

  def accept_terms_of_service
    @browser.checkbox(:id => "terms_record_terms_of_service").set
    @browser.button(:name => "commit").click
  end

  def click_signup
    @browser.link(:href => "#{ApplicationConfig::WEBSITE}/users/sign_up").click
  end

  def click_to_register
    @browser.button(:name => "commit").click
  end

  def enter_birthdate
    @browser.text_field(:placeholder => "mm/dd/yyyy").set(@user.birthdate)
  end

  def enter_email
    @browser.text_field(:id => "user_email").set(@user.email)
  end

  def enter_first_name
    @browser.text_field(:id => "user_scidea_profile_first_name").set(@user.first_name)
  end

  def enter_last_name
    @browser.text_field(:id => "user_scidea_profile_last_name").set(@user.last_name)
  end

  def enter_password
    @browser.text_field(:id => "user_password").set(@user.password)
  end

  def enter_password_confirmation
    @browser.text_field(:id => "user_password_confirmation").set(@user.password)
  end

  def navigate_to_home_page
    @browser.goto ApplicationConfig::WEBSITE
  end

  def select_birthdate

  end

  def select_salutation
    @browser.select_list(:id => "user_profile_attributes_custom_profile_attributes\
_form_response_values_attributes_0_value").select(@user.salutation)
  end

end