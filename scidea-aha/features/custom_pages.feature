Feature: Custom Pages
  As an administrator
  I want to create customizable pages to display on the front end
  So that I may associate them to menu items and display them to public users
  CONCERN: customizable front end

Background:
  Given I am at onlineaha.org
  And I am logged in as the Scitent Admin

Scenario: Create new page with manual url slug
  When I click Pages in the Site menu of the primary admin navigation
  And I click to create a New Page
  And I enter a page name
  And I enter a url slug
  And I enter a display title
  And I enter content
  And I click to Submit
  Then I should see the pages index
  And I should be greeted with a flash message
  And I should see my new page title


Scenario: Create new page without manual url slug
  When I click Pages in the Site menu of the primary admin navigation
  And I click to create a New Page
  And I enter a page name
  And I enter a display title
  And I enter content
  And I click to Submit
  Then I should see the pages index
  And I should be greeted with a flash message
  And I should see my new page title

# Scenario: Duplicate Slugs: Create new page with same name as existing page and no manual slug

# Scenario: Case Sensistivity: Create new page with same name as existing page and same slug but different casing
  # concider timing in this one -- does the first one created take precidence? due to created at date?