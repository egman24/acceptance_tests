When(/^I fill out the registration form as a\(n\) "(.*?)" user$/) do |country|
  @registration = RegistrationPage.new(@browser)
  @registration.user = @user # TODO find way to roll this into the creation of the page... add 'user' value to the page object initialization (how can i crack it open and do that?)
  @registration.register(:country => country)
end

Then(/^I should see that I am logged in$/) do
  pending # express the regexp above with the code you wish you had
end

And(/^My account is learner type$/) do
  pending # express the regexp above with the code you wish you had
end

And(/^I should be greeted with a flash message$/) do
  pending # express the regexp above with the code you wish you had
end

