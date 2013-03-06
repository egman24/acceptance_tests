Feature: Pages
  As an administrator
  I want to create customizable pages to display on the front end
  So that I may associate them to menu items and display them to public users

Scenario: Create new page with manual url slug
  Given I am at onlineaha.org
  And I am logged in as the Scitent Admin
  When I click Pages in the Site menu of the primary navigation
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
  Given I am at onlineaha.org
  And I am logged in as the Scitent Admin
  When I click Pages in the Site menu of the primary navigation
  And I click to create a New Page
  And I enter a page name
  And I enter a display title
  And I enter content
  And I click to Submit
  Then I should see the pages index
  And I should be greeted with a flash message
  And I should see my new page title