Feature: User Registration
  As a guest user
  I want to register an account
  So that I may access the application as a learner
  CONCERN: User Management

Scenario: Domestic Registration via Home Page login widget
  #Given/And I am a guest user
  When I click to Sign Up on the Home Page
  And I fill out the registration form as a Domestic user
  Then I should see that I am logged in
  And I should be greeted with a flash message
  And I should be a logged in as a learner

Scenario: International Registration via Home Page login widget
  #Given/And I am a guest user
  When I click to Sign Up on the Home Page
  And I fill out the registration form as an International user
  Then I should see that I am logged in
  And I should be greeted with a flash message
  And I should be a logged in as a learner

# Scenario: Registration via homepage sign_up button

# Scenario: Registration via users sign_in Sign In wrap

# -----------------------------------------------

# TEST in full: terms and conditions in another scenario?

# TEST in full: editing registration form (custom forms) in another scenario

# Scenario: x number of registrations (sequential)

# Scenario: x number of registrations (concurrent)

# Scenario: password mismatch

# Scenario: submit blank form

# Scenario: combinatorial --> submit form with only one field (try each)

# Scenario: required fields testing (all fields correct is already done: try only optional, only required, and mix)

# Scenario: test client side validations

# Scenario: test server side validations (be sure flash messages are appearing visually as they should, pull text from translation config in app?)

# Test flash messages at different resolutions/screensizes... have screenshots

# Scenario: input limit stress testing for each field type

# Scenario: birthdate field (manual entry)

# Scenario: birthdate field (js calendar entry: use clicks and datepicker td element)

# Scenario: confirm all the data entered [example boolean choices etc..] is actually in my profile (overlap with user edit/profile testing)

# Scenario: determine where and how boolean choices affect my experience

# HOW can I robustly test things that are dependant on dynamic context?
  # admin creation of new dynamic fields,
  # fields added by existance of certian data: audiences exist
  # fields added by certain config options: groups exist and privacy boolean box shows

# Scenario: test different methods of traversing fields -- click into each, use tab to move...etc...

# HOW can i test page timeouts, if post still occurs but validation is stale: https://gist.github.com/egman24/217b70244c8ee14dea91

# user attempts to register but is already in the database, has already registered