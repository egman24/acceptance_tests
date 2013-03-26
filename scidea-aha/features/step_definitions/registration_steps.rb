When(/^I fill out the registration form$/) do
  @registration = RegistrationPage.new(@browser)
  @registration.user = @user # TODO find way to roll this into the creation of the page... add 'user' value to the page object initialization (how can i crack it open and do that?)
  @registration.register
end

Then(/^I should see that I am logged in$/) do
  # ('interface text assertion')
  expect(@browser.text.include? "Welcome, #{@user.first_name} #{@user.last_name}").to be_true
end

Then(/^I should be on the "(.*?)" page$/) do |page_name|
  # ('browser state assertion')
  expect(@browser.url).to end_with(page_name)
end

And(/^I should be greeted with a flash message$/) do
  # ('interface text assertion', 'interface element assertion')
  pending # express the regexp above with the code you wish you had
end

