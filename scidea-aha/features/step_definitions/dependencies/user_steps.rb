Given(/^I am a\(n\) (.*?) guest user$/) do |country|
  @user = User.new(:country => country.to_sym)
end

Then(/^My account should be learner type$/) do
  # use the database and or object in memory to determine this ('database entry assertion' and/or 'in memory value assertion')
  pending # express the regexp above with the code you wish you had
end

Then(/^I should have a\(n\) (.*?) profile$/) do |country_locale|
  # use the database and or object in memory to determine this ('database entry assertion' and/or 'in memory value assertion')
  # use the '/users/#{user_id}/edit' interface to determine this ('interface text assertion')
  pending # express the regexp above with the code you wish you had
end