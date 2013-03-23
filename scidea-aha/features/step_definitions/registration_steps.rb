When(/^I click to Sign Up on the Home Page$/) do
  @registration = RegistrationPage.new(@browser)
  @registration.navigate_to_page
end

When(/^I fill out the registration form as a Domestic user$/) do
  @registration.domestic_registration
end

When(/^I fill out the registration form as an International user$/) do
  @registration.international_registration
end

Then(/^I should see that I am logged in$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^I should be a logged in as a learner$/) do
  pending # express the regexp above with the code you wish you had
end