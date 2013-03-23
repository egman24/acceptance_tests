Given(/^I am a domestic guest user$/) do
  @user = User.new(:country => 'domestic')
end

Given(/^I am an international guest user$/) do
  @user = User.new(:country => 'international')
end

When(/^I click to Sign Up on the Home Page$/) do
  HomePage.new(@browser).navigate_to_registration_page # find optimal way to test different ways to 'navigate to the page', ex, login box, top right, signinpage...   make these tests live in homepage object
end

When(/^I fill out the registration form as a Domestic user$/) do
  @registration = RegistrationPage.new(@browser)
  @registration.user = @user # TODO find way to roll this into the creation of the page... add 'user' value to the page object initialization (how can i crack it open and do that?)
  @registration.domestic_registration
end

When(/^I fill out the registration form as an International user$/) do
  @registration = RegistrationPage.new(@browser)
  @registration.user = @user # TODO find way to roll this into the creation of the page... add 'user' value to the page object initialization (how can i crack it open and do that?)
  @registration.international_registration
end

Then(/^I should see that I am logged in$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^I should be a logged in as a learner$/) do
  pending # express the regexp above with the code you wish you had
end