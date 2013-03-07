Given(/^I am logged in as the Scitent Admin$/) do
  @browser.text_field(:id => "user_email").set("sa.phx@scitent.com")
  @browser.text_field(:id => "user_password").set("password")
  @browser.button(:name => "commit").click
  # add conditional logic to handle terms and conditions when the db was reset it is in the path
end

When(/^I click Pages in the Site menu of the primary admin navigation$/) do
  #@browser.element(:id => "primary-nav-site").hover
  #@browser.link(:text => "Pages").click
  @browser.goto("#{@website}/admin/pages")
end

When(/^I click to create a New Page$/) do
  @browser.link(:href => "/admin/pages/new").click
end

When(/^I enter a page name$/) do
  @page_name = Faker::Company.catch_phrase
  @browser.text_field(:id => "page_name").set(@page_name)
end

When(/^I enter a url slug$/) do
  @browser.text_field(:id => "page_slug").set(@page_name) #add gsubs and splits etc... to get lowercase with
end

When(/^I enter a display title$/) do
  @browser.text_field(:id => "page_page_translations_attributes_0_display_title").set(Faker::Company.name)
end

When(/^I enter content$/) do
  @browser.frame(:id => "page_page_translations_attributes_0_content_ifr").send_keys(Faker::Lorem.paragraphs)
end

Then(/^I should see the pages index$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^I should be greeted with a flash message$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^I should see my new page title$/) do
  pending # express the regexp above with the code you wish you had
end

When(/^I enter$/) do
  pending # express the regexp above with the code you wish you had
end
