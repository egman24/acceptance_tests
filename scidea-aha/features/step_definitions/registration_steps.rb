When(/^I fill out the registration form$/) do
  @registration = RegistrationPage.new(@browser)
  @registration.user = @user # TODO find way to roll this into the creation of the page... add 'user' value to the page object initialization (how can i crack it open and do that?)
  @registration.register
end

Then(/^I should see that I am logged in$/) do

  # use the text on the top right of the page to determine this ('interface text assertion')
  expect(@browser.text.include? "Welcome, ").to be_true
end

Then(/^I should be on the "(.*?)" page$/) do |page_name|

  # add a 'i should be on the page to the feature and as a step definition' --> use watir's 'what url am i on' to assert /courses_and_exercises'
  expect(@browser.url).to end_with(page_name)
end

And(/^I should be greeted with a flash message$/) do

  # use the style and html element on the page and text to determine this ('i.t.a')

  pending # express the regexp above with the code you wish you had
end

