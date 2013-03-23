class HomePage
  include PageObject

  # TODO figure out ways to test this in two contexts -- as guest user and as logged in user -- should appear and behave differently (do this with everything, guest/admin/loggedin)

  def external_link_inventory # make this an object attribute for every page object, along with base url, and other helpful state info
    []
  end

  def navigate_to_page(title)

    screenshot = Screenshot.new(@browser, title)

    screenshot.take('navigate_to_home_page')
    @browser.goto HomePage.base_url
    screenshot.take('navigate_to_home_page')
  end

  def navigate_to_registration_page

    screenshot = Screenshot.new(@browser, 'Homepage_navigate_to_registration_page')

    navigate_to_page('Homepage_navigate_to_page')
    screenshot.take('click_to_signup_via_login_widget')
    self.click_to_signup_via_login_widget
    screenshot.take('click_to_signup_via_login_widget')
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