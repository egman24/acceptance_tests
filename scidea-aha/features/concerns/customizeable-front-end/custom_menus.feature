Feature: Custom Menus
  As an administrator
  I want to create customizable menu elements to display on the front end
  So that public users can access internal pages and external links on the front end

  Background:
    Given I am at onlineaha.org
    And I am logged in as the Scitent Admin

  Scenario: Associate page to menu element
    When I click Menus in the Site menu of the primary admin navigation