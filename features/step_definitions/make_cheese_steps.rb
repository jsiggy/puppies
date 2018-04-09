Given(/^I have no cheese$/) do
  puts "I have no cheese"
end

When(/^I press the make cheese button$/) do
  puts "I hope this button works!"
end

Then(/^I should have (\d+) piece of cheese$/) do |pieces|
  puts "rejoice! we have #{pieces} pieces of cheese"
end