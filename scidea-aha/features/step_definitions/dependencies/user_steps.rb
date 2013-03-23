Given(/^I am a\(n\) "(.*?)" guest user$/) do |country|
  @user = User.new(:country => country.to_sym)
end