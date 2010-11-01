
Given /^schedule (\d+) for user (\d+) exists$/ do |arg1, arg2|
  @workout = Workout.create(:id => arg1, :user_id => arg2, :date => "January 2, 2010", :exercise => "biceps", :expectedreps => 5, :expectedsets => 1)
end

Then /^"([^"]*)" is "([^"]*)"$/ do |arg1, arg2|
  @workout[arg1] == arg2
end