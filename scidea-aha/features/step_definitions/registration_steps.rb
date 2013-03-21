Given(/^I am at onlineaha\.org$/) do
  @browser.goto "#{@website}"
end

When(/^I click to Sign Up$/) do
  @browser.link(:href => "#{@website}/users/sign_up").click
end

When(/^I enter an email in the user email field$/) do
  @browser.text_field(:id => "user_email").set(Faker::Internet.email)      #at some point faker may fail duplicates in db?)
end

When(/^I enter a password in the user password field$/) do
  @password = "password"
  @browser.text_field(:id => "user_password").set(@password)
end

When(/^I enter the same password in the user password confirmation field$/) do
  @browser.text_field(:id => "user_password_confirmation").set(@password)
end

When(/^I enter a first name in the user profile first name field$/) do
  @browser.text_field(:id => "user_profile_attributes_first_name").set(Faker::Name.first_name)
end

When(/^I enter a last name in the user profile last name field$/) do
  @browser.text_field(:id => "user_profile_attributes_last_name").set(Faker::Name.last_name)
end

When(/^I select a value from the salutation dropdown$/) do
  @salutation = %w(Dr. Mrs. Mr. Ms.)
  @browser.select_list(:id => "user_profile_attributes_custom_profile_attributes\
_form_response_values_attributes_0_value").select(@salutation.sample)
end

When(/^I enter a date in the birthdate field$/) do
  @browser.text_field(:placeholder => "mm/dd/yyyy").set(Time.at(0.0 + rand * (Time.now.to_f - 0.0.to_f)).to_date)
end

When(/^I click to Register$/) do
  @browser.button(:name => "commit").click
end

When(/^I accept Terms and Conditions$/) do
  @browser.checkbox(:id => "terms_record_terms_of_service").set
end

When(/^I click to Submit$/) do
  @browser.button(:name => "commit").click
end

Then(/^I should see that I am logged in$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^I should be a logged in as a learner$/) do
  pending # express the regexp above with the code you wish you had
end
