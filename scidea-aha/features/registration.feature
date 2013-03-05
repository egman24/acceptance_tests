Feature: User Registration
  As a guest user
  I want to register an account
  So that I may access the application as a learner

Scenario: Registration via homepage login widget
  Given I am at onlineaha.org
  #Given/And I am a guest user
  When I click to Sign Up
  And I enter "test@scitentQA.com" in the user email field
  And I enter "password" in the user password field
  And I enter "password" in the user password confirmation field
  And I enter "First_Name" in the user profile first name field
  And I enter "Last_Name" in the user profile last name field
  And I select "Dr." from the salutation dropdown
  And I enter "01/01/1950" in the birthdate field
  And I click to Register
  And I accept Terms and Conditions
  And I click to Submit
  Then I should see that I am logged in
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