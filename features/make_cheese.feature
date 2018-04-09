Feature: making cheese

  As a cheese maker
  I want to make cheese
  So that I can share my cheesiness

  Scenario: using the cheese machine
    Given I have no cheese
    When I press the make cheese button
    Then I should have 1 piece of cheese

  Scenario Outline: using the cheese machine with an outline
    Given I have no cheese
    When I press the make "<type>" cheese button
    Then I should have 1 piece of "<message>" cheese
    Examples:
      | type    | message               |
      | Swiss   | I love Swiss cheese   |
      | Blue    | I love Blue cheese    |
      | Cheddar | I love Cheddar cheese |