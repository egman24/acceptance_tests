Given(/^I am a\(n\) "(.*?)" guest user$/) do |country|
  @user = User.new(:country => country)
end