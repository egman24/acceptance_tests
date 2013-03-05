Given(/^I am at onlineaha\.org$/) do
  @browser.goto "#{@website}"
end

When(/^I click to Sign Up$/) do
  @browser.link(:href => "#{@website}/users/sign_up").click
end

When(/^I enter "(.*?)" in the user email field$/) do |name|
  @browser.text_field(:id => "user_email").set(name)
end

When(/^I enter "(.*?)" in the user password field$/) do |password|
  @browser.text_field(:id => "user_password").set(password)
end

When(/^I enter "(.*?)" in the user password confirmation field$/) do |password_confirmation|
  @browser.text_field(:id => "user_password_confirmation").set(password_confirmation)
end

When(/^I enter "(.*?)" in the user profile first name field$/) do |first_name|
  @browser.text_field(:id => "user_profile_attributes_first_name").set(first_name)
end

When(/^I enter "(.*?)" in the user profile last name field$/) do |last_name|
  @browser.text_field(:id => "user_profile_attributes_last_name").set(last_name)
end

When(/^I select "(.*?)" from the salutation dropdown$/) do |salutation|
  @browser.select_list(:id => "user_profile_attributes_custom_profile_attributes\
_form_response_values_attributes_0_value").select(salutation)
end

When(/^I enter "(.*?)" in the birthdate field$/) do |birthdate|
  @browser.text_field(:placeholder => "mm/dd/yyyy").set(birthdate)
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
