Feature: User Registration
  As a guest user
  I want to register an account
  So that I may access the application as a learner

  CONCERN: User Management

Scenario Outline: Registration via Home Page login widget
  Given I am a(n) <domestic/international> guest user
  When I click to Sign Up on the Home Page
  And I fill out the registration form
  Then I should see that I am logged in
  And I should be on the "/courses" page
  And I should be greeted with a flash message
  And My account should be learner type
  And I should have a(n) <domestic/international> profile

  Examples:
  | domestic/international |
  | domestic               |
  | international          |

Scenario: Registration Form | Input Bounds: Submit with nothing filled in
  Given I am a guest user
  When I click to Sign Up on the Home Page

  Scenario: Registration Form | Input Bounds: Fill everything but single field (combinatorial each field)
  Given I am a guest user
  When I click to Sign Up on the Home Page

  Scenario: Registration Form | Input Bounds: Fill only one field (combinatorial each field)
  Given I am a guest user
  When I click to Sign Up on the Home Page

Scenario: Registration Form | Input Bounds: Email incorrect format (white space entry, different character entries)
  Given I am a guest user
  When I click to Sign Up on the Home Page

Scenario: Registration Form | Input Bounds: Email too long
  Given I am a guest user
  When I click to Sign Up on the Home Page

Scenario: Registration Form | Input Bounds: Email too short
  Given I am a guest user
  When I click to Sign Up on the Home Page

Scenario: Registration Form | Input Bounds: Email does not match (different emails, different case)
  Given I am a guest user
  When I click to Sign Up on the Home Page

Scenario: Registration Form | Input Bounds: Password incorrect format (white space entry, different character entries)
  Given I am a guest user
  When I click to Sign Up on the Home Page

Scenario: Registration Form | Input Bounds: Password too long
  Given I am a guest user
  When I click to Sign Up on the Home Page

Scenario: Registration Form | Input Bounds: Password too short
  Given I am a guest user
  When I click to Sign Up on the Home Page

Scenario: Registration Form | Input Bounds: Password does not match (different emails, different case)
  Given I am a guest user
  When I click to Sign Up on the Home Page

Scenario: Registration Form | Input Bounds: First name incorrect format (white space entry, different character entries)
  Given I am a guest user
  When I click to Sign Up on the Home Page

Scenario: Registration Form | Input Bounds: First name too long
  Given I am a guest user
  When I click to Sign Up on the Home Page

Scenario: Registration Form | Input Bounds: First name too short
  Given I am a guest user
  When I click to Sign Up on the Home Page

Scenario: Registration Form | Input Bounds: Last name incorrect format (white space entry, different character entries)
  Given I am a guest user
  When I click to Sign Up on the Home Page

Scenario: Registration Form | Input Bounds: Last name too long
  Given I am a guest user
  When I click to Sign Up on the Home Page

Scenario: Registration Form | Input Bounds: Last name too short
  Given I am a guest user
  When I click to Sign Up on the Home Page

Scenario: Registration Form | Input Bounds: Any text fields -- sql injection (enter js, mysql, sql, ruby eval, etc... destructive code)
  Given I am a guest user
  When I click to Sign Up on the Home Page


# Scenario user (email) already exists and tries to register
# **use the User.new().in_database to create user in database to check against

# Scenario length of entries
# Given I am a guest user with a (password|name|etc..) over "x" characters (user table scenario to try different things?)

# Scenario: Registration via homepage sign_up button

# Scenario: Registration via users sign_in Sign In wrap

# -----------------------------------------------

# TEST in full: terms and conditions in another scenario?

# Scenario: x number of registrations (sequential)

# Scenario: x number of registrations (concurrent)

# Scenario: test client side validations

# Scenario: test server side validations (be sure flash messages are appearing visually as they should, pull text from translation config in app?)

# Test flash messages at different resolutions/screensizes... have screenshots

# Scenario: confirm all the data entered [example boolean choices etc..] is actually in my profile (overlap with user edit/profile testing)

# Scenario: determine where and how boolean choices affect my experience

# HOW can I robustly test things that are dependant on dynamic context?
  # admin creation of new dynamic fields,
  # fields added by existance of certian data: audiences exist
  # fields added by certain config options: groups exist and privacy boolean box shows

# Scenario: test different methods of traversing fields -- click into each, use tab to move...etc...

# HOW can i test page timeouts, if post still occurs but validation is stale: https://gist.github.com/egman24/217b70244c8ee14dea91

# can the system confirm and email was triggered and take a look at what it looks like?