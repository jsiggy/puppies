Given("I am on the puppy adoption site") do
  visit(HomePage)
  # @browser.goto "http://puppies.herokuapp.com"
  # @home = HomePage.new(@browser)
end

When("I click the View Details button {int}") do |num|
  on(HomePage).select_puppy_number num
  # @home.select_puppy(num)
  # @details = DetailsPage.new(@browser)
end

When("I click the Adopt Me button") do
  on(DetailsPage).add_to_cart
  # @details.add_to_cart
  # @cart = ShoppingCartPage.new(@browser)
end

When("I click the Adopt Another Puppy button") do
  on(ShoppingCartPage).continue_shopping
  # @cart.continue_shopping
end

When("I click the Complete the Adoption button") do
  on(ShoppingCartPage).checkout
  # @cart.checkout
  # @checkout = CheckoutPage.new(@browser)
end

When("I enter {string} in the name field") do |name|
  on(CheckoutPage).name = name
  # @checkout.name = name
end

When("I enter {string} in the address field") do |address|
  on(CheckoutPage).address = address
  # @checkout.address = address
end

When("I enter {string} in the email field") do |email|
  on(CheckoutPage).email = email
  # @checkout.email = email
end

When("I select {string} in the payment dropdown") do |payment_type|
  on(CheckoutPage).pay_type = payment_type
  # @checkout.pay_type = payment_type
end

When("I select the Place order button") do
  on(CheckoutPage).place_order
  # @checkout.place_order
end

Then("I should see {string} as the name for line item {int}") do |name, line_item|
  expect(on(ShoppingCartPage).name_for_line_item(line_item.to_i)).to include name
end

Then ("I should see {string} as the subtotal for line item {int}") do |subtotal, line_item|
  expect(on(ShoppingCartPage).subtotal_for_line_item(line_item)).to eql subtotal
end

Then ("I should see {string} as the cart total") do |total|
  expect(on(ShoppingCartPage).total).to eql total
end

Then("I should see {string}") do |expected_success_message|
  expect(@current_page.text).to include expected_success_message
end
