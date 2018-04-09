Feature: Puppy adoption

  As a puppy lover
  I want to adopt puppies
  So that I can save the lost puppies

  Background:
    Given I am on the puppy adoption site

  Scenario: adopt one puppy
    When I click the View Details button 0
    And I click the Adopt Me button
    And I click the Complete the Adoption button
    And I enter "John" in the name field
    And I enter "8110 Ranch Rd 2222" in the address field
    And I enter "john@foo.bar" in the email field
    And I select "Credit card" in the payment dropdown
    And I select the Place order button
    Then I should see "Thank you for adopting a puppy!"

  Scenario: adopt two puppies
    When I click the View Details button 1
    And I click the Adopt Me button
    And I click the Adopt Another Puppy button
    When I click the View Details button 3
    And I click the Adopt Me button
    And I click the Complete the Adoption button
    And I enter "John" in the name field
    And I enter "8110 Ranch Rd 2222" in the address field
    And I enter "john@foo.bar" in the email field
    And I select "Credit card" in the payment dropdown
    And I select the Place order button
    Then I should see "Thank you for adopting a puppy!"

  Scenario Outline: different people adopting a puppy
    When I click the View Details button 2
    And I click the Adopt Me button
    And I click the Complete the Adoption button
    And I enter "<name>" in the name field
    And I enter "<address>" in the address field
    And I enter "<email>" in the email field
    And I select "<payment_type>" in the payment dropdown
    And I select the Place order button
    Then I should see "Thank you for adopting a puppy!"
    Examples:
      | name | address                 | email         | payment_type   |
      | John | 8110 Ranch Rd 2222      | john@foo.bar  | Credit card    |
      | Lori | 3409 Esperanza Crossing | lori@baz.zot  | Check          |
      | Alex | 2404 Oak Manor          | alex@blah.com | Purchase order |

  Scenario: validate cart with one puppy
    When I click the View Details button 1
    And I click the Adopt Me button
    Then I should see "Brook" as the name or line item 1
    And I should see "$34.95" as the subtotal for line item 1
    And I should see "$34.95" as the cart total

  Scenario: validate cart with two puppies
    When I click the View Details button 1
    And I click the Adopt Me button
    And I click the Adopt Another Puppy button
    And I click the View Details button 2
    And I click the Adopt Me button
    Then I should see "Brook" as the name or line item 1
    And I should see "$34.95" as the subtotal for line item 1
    And I should see "Hanna" as the name or line item 2
    And I should see "$22.99" as the subtotal for line item 2
    And I should see "$57.94" as the cart total