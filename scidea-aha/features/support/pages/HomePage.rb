class HomePage
  include PageObject

  # TODO figure out ways to test this in two contexts -- as guest user and as logged in user -- should appear and behave differently (do this with everything, guest/admin/loggedin)

  def external_link_inventory # make this an object attribute for every page object, along with base url, and other helpful state info
    []
  end

  def navigate_to_page(title)

    screenshot = Screenshot.new(@browser, title)

    screenshot.captures('navigate_to_home_page', 'Home Page: Navigate to Home Page (before)')
    @browser.goto HomePage.base_url
    screenshot.captures('navigate_to_home_page', 'Home Page: Navigate to Home Page (after)')
  end

  def navigate_to_registration_page

    screenshot = Screenshot.new(@browser, 'Homepage_navigate_to_registration_page')

    navigate_to_page('Homepage_navigate_to_page')
    screenshot.captures('click_to_signup_via_login_widget', 'Home Page: Click to Sign Up via Login Widget (before)')
    self.click_to_signup_via_login_widget
    screenshot.captures('click_to_signup_via_login_widget', 'Home Page: Click to Sign Up via Login Widget (after)')
  end

  def test_external_links

  end

  private

  def self.base_url
    $WEBSITE
  end

  ############################
  ## Page Element Inventory ##
  ############################

  link(:click_to_signup_via_login_widget, :href => /\/users\/sign_up/)

  #######################
  ## Aggregate Actions ##
  #######################

end