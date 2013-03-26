class RegistrationPage
  include PageObject

  attr_accessor :user

  def active_email_registration
    # use services like dispostable? (output the email addresses to check in test output?)
  end

  def bulk_registration(num_users)
    num_users.times do

    end
  end

  def register
    if user.country_locale == :domestic
      fill_title   = 'Registration[Domestic]_fill_out_form'
      submit_title = 'Registration[Domestic]_submit_form'
    else user.country_locale == :international
      fill_title   = 'Registration[International]_fill_out_form'
      submit_title = 'Registration[International]_submit_form'
    end

    fill_out_form(fill_title)
    submit_form(submit_title)
  end

  private

  def self.base_url
    "#{$WEBSITE}/users/sign_up"
  end

  ############################
  ## Page Element Inventory ##
  ############################

       button(:click_to_register,              :name => "commit"                        )
     checkbox(:accept_terms_and_conditions,   :value => 'Terms'                         )
  select_list(:select_country,                   :id => 'user_scidea_profile_country_id')
   text_field(:enter_email,                      :id => 'user_email'                    )
   text_field(:enter_email_confirmation,         :id => 'user_email_confirmation'       )
   text_field(:enter_first_name,                 :id => 'user_scidea_profile_first_name')
   text_field(:enter_last_name,                  :id => 'user_scidea_profile_last_name' )
   text_field(:enter_password,                   :id => 'user_password'                 )
   text_field(:enter_password_confirmation,      :id => 'user_password_confirmation'    )

  # General  #
  #$$$$$$$$$$#

  def accept_terms_of_service
    #screen = "#{screenshot_path}_#{Time.now.strftime('%H%M%S%L%N')}_accept_terms_of_service.png"; @browser.screenshot.save screen
    @browser.checkbox(:id => "terms_record_terms_of_service").set
    #screen = "#{screenshot_path}_#{Time.now.strftime('%H%M%S%L%N')}_accept_terms_of_service.png"; @browser.screenshot.save screen
    @browser.button(:name => "commit").click
    #screen = "#{screenshot_path}_#{Time.now.strftime('%H%M%S%L%N')}_accept_terms_of_service.png"; @browser.screenshot.save screen
  end

  def enter_birthdate
    #screen = "#{screenshot_path}_#{Time.now.strftime('%H%M%S%L%N')}_enter_birthdate.png"; @browser.screenshot.save screen
    @browser.text_field(:placeholder => "mm/dd/yyyy").set(user.birthdate)
    #screen = "#{screenshot_path}_#{Time.now.strftime('%H%M%S%L%N')}_enter_birthdate.png"; @browser.screenshot.save screen
  end


  def select_birthdate

  end

  def select_salutation
    #screen = "#{screenshot_path}_#{Time.now.strftime('%H%M%S%L%N')}_select_salutation.png"; @browser.screenshot.save screen
    @browser.select_list(:id => "user_profile_attributes_custom_profile_attributes\
_form_response_values_attributes_0_value").select(user.salutation)
    #screen = "#{screenshot_path}_#{Time.now.strftime('%H%M%S%L%N')}_select_salutation.png"; @browser.screenshot.save screen
  end

  #######################
  ## Aggregate Actions ##
  #######################

  def fill_out_form(title)

    screenshot = Screenshot.new(@browser, title)

    screenshot.captures('select_country', 'Registration: Select Country (before)')
    self.select_country               = user.country
    screenshot.captures('select_country', 'Registration: Select Country (after)')
    screenshot.captures('enter_email', 'Registration: Enter Email (before)')
    self.enter_email                  = user.email
    screenshot.captures('enter_email', 'Registration: Enter Email (after)')
    screenshot.captures('enter_email_confirmation', 'Registration: Enter Email Confirmation (before)')
    self.enter_email_confirmation     = user.email
    screenshot.captures('enter_email_confirmation', 'Registration: Enter Email Confirmation (after)')
    screenshot.captures('enter_password', 'Registration: Enter Password (before)')
    self.enter_password               = user.password
    screenshot.captures('enter_password', 'Registration: Enter Password (after)')
    screenshot.captures('enter_password_confirmation', 'Registration: Enter Password Confirmation (before)')
    self.enter_password_confirmation  = user.password
    screenshot.captures('enter_password_confirmation', 'Registration: Enter Password Confirmation (after)')
    screenshot.captures('enter_first_name', 'Registration: Enter First Name (before)')
    self.enter_first_name             = user.first_name
    screenshot.captures('enter_first_name', 'Registration: Enter First Name (after)')
    screenshot.captures('enter_last_name', 'Registration: Enter Last Name (before)')
    self.enter_last_name              = user.last_name
    screenshot.captures('enter_last_name', 'Registration: Enter Last Name (after)')
    screenshot.captures('accept_terms_and_conditions', 'Registration: Accept Terms and Conditions (before)')
    self.check_accept_terms_and_conditions
    screenshot.captures('accept_terms_and_conditions', 'Registration: Accept Terms and Conditions (after)')
  end

  def submit_form(title)

    screenshot = Screenshot.new(@browser, title)

    screenshot.captures('click_to_register', 'Registration: Click to Register (before)')
    self.click_to_register
    screenshot.captures('click_to_register', 'Registration: Click to Register (before)')
  end

end