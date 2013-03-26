## Navigation

When(/^I click to Sign Up on the Home Page$/) do
  HomePage.new(@browser).navigate_to_registration_page # find optimal way to test different ways to 'navigate to the page', ex, login box, top right, signinpage...   make these tests live in homepage object
end