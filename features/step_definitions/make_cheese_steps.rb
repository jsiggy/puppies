Given(/^I have no cheese$/) do
  puts "I have no cheese"
end

When(/^I press the make cheese button$/) do
  puts "I hope this button works!"
end

When("I press the make {string} cheese button") do |type|
  puts "Making #{type} cheese!"
end

Then(/^I should have (\d+) piece of cheese$/) do |pieces|
  puts "rejoice! we have #{pieces} pieces of cheese"
end

Then("I should have {int} piece of {string} cheese") do |num, type|
  puts "rejoice! we have #{num} pieces of #{type} cheese~"
end