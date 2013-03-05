Feature: User Registration
  As a guest user
  I want to register an account
  So that I may access the application as a learner

Scenario: Registration
  Given I am a guest user
  When I register
  Then I should be logged in
  And I should be a learner