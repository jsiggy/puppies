Feature: Puppy adoption

  As a puppy lover
  I want to adopt puppies
  So that I can save the lost puppies

  Scenario: adopt one puppy
    Given I am on the puppy adoption site
    When I click the View Details button
    And I click the Adopt Me button
    And I click the Complete the Adoption button
    And I enter "John" in the name field
    And I enter "8110 Ranch Rd 2222" in the address field
    And I enter "john@foo.bar" in the email field
    And I select "Credit card" in the payment dropdown
    And I select "Place order"
    Then I should see "Thank you for adopting a puppy!"