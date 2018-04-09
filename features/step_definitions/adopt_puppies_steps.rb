Given("I am on the puppy adoption site") do
  @browser.goto "http://puppies.herokuapp.com"
end

When("I click the View Details button {int}") do |num|
  @browser.button(:value=>'View Details', index: num).click
end

When("I click the Adopt Me button") do
  @browser.button(:value =>'Adopt Me!').click
end

When("I click the Adopt Another Puppy button") do
  @browser.button(:value =>'Adopt Another Puppy').click
end

When("I click the Complete the Adoption button") do
  @browser.button(:value =>'Complete the Adoption').click
end

When("I enter {string} in the name field") do |name|
  @browser.text_field(:id => 'order_name').set(name)
end

When("I enter {string} in the address field") do |address|
  @browser.textarea(:id => 'order_address').set(address)
end

When("I enter {string} in the email field") do |email|
  @browser.text_field(:id => 'order_email').set(email)
end

When("I select {string} in the payment dropdown") do |payment_type|
  @browser.select_list(:id => 'order_pay_type').select(payment_type)
end

When("I select the Place order button") do
  @browser.button(:value =>'Place Order').click
end

Then("I should see {string}") do |expected_message|
  expect(@browser.text).to include expected_message
end