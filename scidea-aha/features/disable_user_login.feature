Feature: Disable User Login
  As an administrator
  I want to flag user accounts 'Disabled'
  I want to trigger an email sent out to alert user that they no longer have access to the site
  So that I may restrict user access to the site

  CONCERN: User Management

Scenario: Disable User Login
  Given A delinquent user exists
  And I am at onlineaha.org
  And I am logged in as the Scitent Admin
  When I click Manage in the Users menu of the primary admin navigation
  And I click to edit the delinquent user's account
  And I click to disable user login
  And I click to Update
  Then I should


Scenario: Re-enable User Login
  Given A delinquent user exists
  And I am at onlineaha.org
  And I am logged in as the Scitent Admin
  When I click Manage in the Users menu of the primary admin navigation
  And I click to edit the delinquent user's account



# Should the user always receive email when this happens or should the admin have the ability to opt out of email?
# There is one email template for all account restrictions, will there be need for personalization per event?
# Can an admin disable themselves and lock themselves out?