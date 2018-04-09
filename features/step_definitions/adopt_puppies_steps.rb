Given("I am on the puppy adoption site") do
  @browser.goto "http://puppies.herokuapp.com"
end

When("I click the View Details button") do
  @browser.button(:value =>'View Details').click
end

When("I click the Adopt Me button") do
  @browser.button(:value =>'Adopt Me!').click
end

When("I click the Complete the Adoption button") do
  @browser.button(:value =>'Complete the Adoption').click
end

And("I enter {string} in the name field") do |string|
  pending # Write code here that turns the phrase above into concrete actions
end

And("I enter {string} in the address field") do |string|
  pending # Write code here that turns the phrase above into concrete actions
end

And("I enter {string} in the email field") do |string|
  pending # Write code here that turns the phrase above into concrete actions
end

And("I select {string} in the payment dropdown") do |string|
  pending # Write code here that turns the phrase above into concrete actions
end

And("I select {string}") do |string|
  pending # Write code here that turns the phrase above into concrete actions
end

Then("I should see {string}") do |string|
  pending # Write code here that turns the phrase above into concrete actions
end
