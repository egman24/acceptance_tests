Given(/^A delinquent user exists$/) do
  title = "A delinquent user exists"
  screenshot = "#{@session}/#{title.gsub(' ','_')}"

  screen = screenshot + "_#{Time.now.strftime('%H%M%S')}.png"
  @browser.screenshot.save screen
  embed screen, "image/png"

  @browser.goto "#{@website}"

  screen = screenshot + "_#{Time.now.strftime('%H%M%S')}.png"
  @browser.screenshot.save screen
  embed screen, "image/png"

  @browser.link(:href => "#{@website}/users/sign_up").click

  screen = screenshot + "_#{Time.now.strftime('%H%M%S')}.png"
  @browser.screenshot.save screen
  embed screen, "image/png"

  @email = Faker::Internet.email
  @browser.text_field(:id => "user_email").set(@email)

  screen = screenshot + "_#{Time.now.strftime('%H%M%S')}.png"
  @browser.screenshot.save screen
  embed screen, "image/png"

  @password = "password"
  @browser.text_field(:id => "user_password").set(@password)

  screen = screenshot + "_#{Time.now.strftime('%H%M%S')}.png"
  @browser.screenshot.save screen
  embed screen, "image/png"

  @browser.text_field(:id => "user_password_confirmation").set(@password)

  screen = screenshot + "_#{Time.now.strftime('%H%M%S')}.png"
  @browser.screenshot.save screen
  embed screen, "image/png"

  @browser.text_field(:id => "user_profile_attributes_first_name").set(Faker::Name.first_name)

  screen = screenshot + "_#{Time.now.strftime('%H%M%S')}.png"
  @browser.screenshot.save screen
  embed screen, "image/png"

  @browser.text_field(:id => "user_profile_attributes_last_name").set(Faker::Name.last_name)
  @salutation = %w(Dr. Mrs. Mr. Ms.)
  @browser.select_list(:id => "user_profile_attributes_custom_profile_attributes\
_form_response_values_attributes_0_value").select(@salutation.sample)

  screen = screenshot + "_#{Time.now.strftime('%H%M%S')}.png"
  @browser.screenshot.save screen
  embed screen, "image/png"

  @browser.text_field(:placeholder => "mm/dd/yyyy").set(Time.at(0.0 + rand * (Time.now.to_f - 0.0.to_f)).to_date)

  screen = screenshot + "_#{Time.now.strftime('%H%M%S')}.png"
  @browser.screenshot.save screen
  embed screen, "image/png"

  @browser.button(:name => "commit").click

  screen = screenshot + "_#{Time.now.strftime('%H%M%S')}.png"
  @browser.screenshot.save screen
  embed screen, "image/png"

  @browser.checkbox(:id => "terms_record_terms_of_service").set

  screen = screenshot + "_#{Time.now.strftime('%H%M%S')}.png"
  @browser.screenshot.save screen
  embed screen, "image/png"

  @browser.button(:name => "commit").click

  screen = screenshot + "_#{Time.now.strftime('%H%M%S')}.png"
  @browser.screenshot.save screen
  embed screen, "image/png"

  @browser.goto "#{@website}/users/sign_out"

  screen = screenshot + "_#{Time.now.strftime('%H%M%S')}.png"
  @browser.screenshot.save screen
  embed screen, "image/png"

end

When(/^I click Manage in the Users menu of the primary admin navigation$/) do
  title = "I click Manage in the Users menu of the primary admin navigation"
  screenshot = "#{@session}/#{title.gsub(' ','_')}"


  screen = screenshot + "_#{Time.now.strftime('%H%M%S')}.png"
  @browser.screenshot.save screen
  embed screen, "image/png"

  @browser.goto("#{@website}/admin/users")

  screen = screenshot + "_#{Time.now.strftime('%H%M%S')}.png"
  @browser.screenshot.save screen
  embed screen, "image/png"

end

When(/^I click to edit the delinquent user's account$/) do
  title = "I click to edit the delinquent user's account"
  screenshot = "#{@session}/#{title.gsub(' ','_')}"


  screen = screenshot + "_#{Time.now.strftime('%H%M%S')}.png"
  @browser.screenshot.save screen
  embed screen, "image/png"

  @browser.text_field(:id => "search").set(@email)

  screen = screenshot + "_#{Time.now.strftime('%H%M%S')}.png"
  @browser.screenshot.save screen
  embed screen, "image/png"

  @browser.button(:value => "Search").click

  screen = screenshot + "_#{Time.now.strftime('%H%M%S')}.png"
  @browser.screenshot.save screen
  embed screen, "image/png"

  @browser.link(:title => "Edit").click

  screen = screenshot + "_#{Time.now.strftime('%H%M%S')}.png"
  @browser.screenshot.save screen
  embed screen, "image/png"

end

When(/^I click to disable user login$/) do
  title = "I click to disable user login"
  screenshot = "#{@session}/#{title.gsub(' ','_')}"


  screen = screenshot + "_#{Time.now.strftime('%H%M%S')}.png"
  @browser.screenshot.save screen
  embed screen, "image/png"

  @browser.checkbox(:id => "user_is_disabled").set

  screen = screenshot + "_#{Time.now.strftime('%H%M%S')}.png"
  @browser.screenshot.save screen
  embed screen, "image/png"

end

When(/^I click to Update$/) do
  title = "I click to Update"
  screenshot = "#{@session}/#{title.gsub(' ','_')}"


  screen = screenshot + "_#{Time.now.strftime('%H%M%S')}.png"
  @browser.screenshot.save screen
  embed screen, "image/png"

  @browser.button(:value => "Update").click

  screen = screenshot + "_#{Time.now.strftime('%H%M%S')}.png"
  @browser.screenshot.save screen
  embed screen, "image/png"

end

Then(/^I should$/) do
  pending # express the regexp above with the code you wish you had
end
