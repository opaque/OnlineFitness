
Given /^user "([^"]*)" exists$/ do |arg1|
  @user = User.create(:id => 1, :name => arg1, :birthday => "January 2, 1970", :height => 70, :weight => 150, :gender => "Male")
end

Then /^"([^"]*)" should be "([^"]*)"$/ do |arg1, arg2|
  @user[arg1] == arg2
end