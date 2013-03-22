class RegistrationPage

  def initialize(browser, screenshot)
    @browser    = browser
    @screenshot = screenshot
  end

  def active_email_registration
    # use services like dispostable? (output the email addresses to check in test output?)
  end

  def bulk_registration(num_users)
    num_users.times do

    end
  end

  def domestic_registration
    @user = User.new(Application::DOMESTIC_COUNTRIES)
    fill_out_form
  end

  def international_registration
    @user = User.new(Application::INTERNATIONAL_COUNTRIES)
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
    screen = "#{@screenshot}_#{Time.now.strftime('%H%M%S%L%N')}_accept_terms_and_conditions.png"; @browser.screenshot.save screen
    @browser.checkbox(:name => "agree", :value => "Terms").set
    screen = "#{@screenshot}_#{Time.now.strftime('%H%M%S%L%N')}_accept_terms_and_conditions.png"; @browser.screenshot.save screen
  end

  def select_country
    screen = "#{@screenshot}_#{Time.now.strftime('%H%M%S%L%N')}_select_country.png"; @browser.screenshot.save screen
    @browser.select_list(:id => "user_scidea_profile_country_id").select(@user.country)
    screen = "#{@screenshot}_#{Time.now.strftime('%H%M%S%L%N')}_select_country.png"; @browser.screenshot.save screen
  end

  def enter_email_confirmation
    screen = "#{@screenshot}_#{Time.now.strftime('%H%M%S%L%N')}_enter_email_confirmation.png"; @browser.screenshot.save screen
    @browser.text_field(:id => "user_email_confirmation").set(@user.email)
    screen = "#{@screenshot}_#{Time.now.strftime('%H%M%S%L%N')}_enter_email_confirmation.png"; @browser.screenshot.save screen
  end


  # General  #
  #$$$$$$$$$$#

  # TODO extract the DOM attribute values into single 'element' listing/inventory for quick changes or reuse

  def accept_terms_of_service
    screen = "#{@screenshot}_#{Time.now.strftime('%H%M%S%L%N')}_accept_terms_of_service.png"; @browser.screenshot.save screen
    @browser.checkbox(:id => "terms_record_terms_of_service").set
    screen = "#{@screenshot}_#{Time.now.strftime('%H%M%S%L%N')}_accept_terms_of_service.png"; @browser.screenshot.save screen
    @browser.button(:name => "commit").click
    screen = "#{@screenshot}_#{Time.now.strftime('%H%M%S%L%N')}_accept_terms_of_service.png"; @browser.screenshot.save screen
  end

  def click_signup
    screen = "#{@screenshot}_#{Time.now.strftime('%H%M%S%L%N')}_click_signup.png"; @browser.screenshot.save screen
    @browser.link(:href => "#{Application::WEBSITE}/users/sign_up").click
    screen = "#{@screenshot}_click_signup_#{Time.now.strftime('%H%M%S%L%N')}_click_signup.png"; @browser.screenshot.save screen
  end

  def click_to_register
    screen = "#{@screenshot}_#{Time.now.strftime('%H%M%S%L%N')}_click_to_register.png"; @browser.screenshot.save screen
    @browser.button(:name => "commit").click
    screen = "#{@screenshot}_click_to_register#{Time.now.strftime('%H%M%S%L%N')}_click_to_register.png"; @browser.screenshot.save screen
  end

  def enter_birthdate
    screen = "#{@screenshot}_#{Time.now.strftime('%H%M%S%L%N')}_enter_birthdate.png"; @browser.screenshot.save screen
    @browser.text_field(:placeholder => "mm/dd/yyyy").set(@user.birthdate)
    screen = "#{@screenshot}_#{Time.now.strftime('%H%M%S%L%N')}_enter_birthdate.png"; @browser.screenshot.save screen
  end

  def enter_email
    screen = "#{@screenshot}_#{Time.now.strftime('%H%M%S%L%N')}_enter_email.png"; @browser.screenshot.save screen
    @browser.text_field(:id => "user_email").set(@user.email)
    screen = "#{@screenshot}_#{Time.now.strftime('%H%M%S%L%N')}_enter_email.png"; @browser.screenshot.save screen
  end

  def enter_first_name
    screen = "#{@screenshot}_#{Time.now.strftime('%H%M%S%L%N')}_enter_first_name.png"; @browser.screenshot.save screen
    @browser.text_field(:id => "user_scidea_profile_first_name").set(@user.first_name)
    screen = "#{@screenshot}_#{Time.now.strftime('%H%M%S%L%N')}_enter_first_name.png"; @browser.screenshot.save screen
  end

  def enter_last_name
    screen = "#{@screenshot}_#{Time.now.strftime('%H%M%S%L%N')}_enter_last_name.png"; @browser.screenshot.save screen
    @browser.text_field(:id => "user_scidea_profile_last_name").set(@user.last_name)
    screen = "#{@screenshot}_#{Time.now.strftime('%H%M%S%L%N')}_enter_last_name.png"; @browser.screenshot.save screen
  end

  def enter_password
    screen = "#{@screenshot}_#{Time.now.strftime('%H%M%S%L%N')}_enter_password.png"; @browser.screenshot.save screen
    @browser.text_field(:id => "user_password").set(@user.password)
    screen = "#{@screenshot}_#{Time.now.strftime('%H%M%S%L%N')}_enter_password.png"; @browser.screenshot.save screen
  end

  def enter_password_confirmation
    screen = "#{@screenshot}_#{Time.now.strftime('%H%M%S%L%N')}_enter_password_confirmation.png"; @browser.screenshot.save screen
    @browser.text_field(:id => "user_password_confirmation").set(@user.password)
    screen = "#{@screenshot}_#{Time.now.strftime('%H%M%S%L%N')}_enter_password_confirmation.png"; @browser.screenshot.save screen
  end

  def navigate_to_home_page
    screen = "#{@screenshot}_#{Time.now.strftime('%H%M%S%L%N')}_navigate_to_home_page.png"; @browser.screenshot.save screen
    @browser.goto Application::WEBSITE
    screen = "#{@screenshot}_#{Time.now.strftime('%H%M%S%L%N')}_navigate_to_home_page.png"; @browser.screenshot.save screen
  end

  def select_birthdate

  end

  def select_salutation
    screen = "#{@screenshot}_#{Time.now.strftime('%H%M%S%L%N')}_select_salutation.png"; @browser.screenshot.save screen
    @browser.select_list(:id => "user_profile_attributes_custom_profile_attributes\
_form_response_values_attributes_0_value").select(@user.salutation)
    screen = "#{@screenshot}_#{Time.now.strftime('%H%M%S%L%N')}_select_salutation.png"; @browser.screenshot.save screen
  end

end