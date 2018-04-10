Given("I am on the puppy adoption site") do
  @browser.goto "http://puppies.herokuapp.com"
end

When("I click the View Details button {int}") do |num|
  @browser.button(:value => 'View Details', index: num).click
end

When("I click the Adopt Me button") do
  @browser.button(:value => 'Adopt Me!').click
  @cart = ShoppingCartPage.new(@browser)
end

When("I click the Adopt Another Puppy button") do
  @cart.continue_shopping
end

When("I click the Complete the Adoption button") do
  @cart.checkout
  @checkout = CheckoutPage.new(@browser)
end

When("I enter {string} in the name field") do |name|
  @checkout.name = name
end

When("I enter {string} in the address field") do |address|
  @checkout.address = address
end

When("I enter {string} in the email field") do |email|
  @checkout.email = email
end

When("I select {string} in the payment dropdown") do |payment_type|
  @checkout.pay_type = payment_type
end

When("I select the Place order button") do
  @checkout.place_order
end

Then("I should see {string} as the name or line item {int}") do |name, line_item|
  expect(@cart.name_for_line_item(line_item.to_i)).to include name
end

Then ("I should see {string} as the subtotal for line item {int}") do |subtotal, line_item|
  expect(@cart.subtotal_for_line_item(line_item)).to eql subtotal
end

Then ("I should see {string} as the cart total") do |total|
  expect(@cart.total).to eql total
end

Then("I should see {string}") do |expected_success_message|
  expect(@browser.text).to include expected_success_message
end
