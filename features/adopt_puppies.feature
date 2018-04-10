Feature: Puppy adoption

  As a puppy lover
  I want to adopt puppies
  So that I can save the lost puppies

  Background:
    Given I am on the puppy adoption site


  Scenario: can adopt one puppy (all default data)
    When I complete the adoption of a puppy
    Then I should see "Thank you for adopting a puppy!"

  Scenario: can adopt one puppy (specify payment_type only)
    When I complete the adoption of a puppy using a "Credit card"
    Then I should see "Thank you for adopting a puppy!"

  Scenario: can adopt two puppies
    When I complete the adoption of two puppies
    Then I should see "Thank you for adopting a puppy!"

  Scenario: checkout requires a name
    When I attempt to checkout without a name
    Then I should see "Name can't be blank"

  Scenario Outline: can checkout with different payment types
    When I complete the adoption of a puppy using a "<pay_type>"
    Then I should see "Thank you for adopting a puppy!"
    Examples:
      | pay_type       |
      | Credit card    |
      | Check          |
      | Purchase order |

  Scenario: validate cart with one puppy
    When I click the View Details button for "Brook"
    And I click the Adopt Me button
    Then I should see "Brook" as the name for line item 1
    And I should see "$34.95" as the subtotal for line item 1
    And I should see "$34.95" as the cart total

  Scenario: validate cart with two puppies
    When I click the View Details button for "Brook"
    And I click the Adopt Me button
    And I click the Adopt Another Puppy button
    And I click the View Details button for "Hanna"
    And I click the Adopt Me button
    Then I should see "Brook" as the name for line item 1
    And I should see "$34.95" as the subtotal for line item 1
    And I should see "Hanna" as the name for line item 2
    And I should see "$22.99" as the subtotal for line item 2
    And I should see "$57.94" as the cart total

