Feature: Search for an item an be able to add to shopping cart

  Scenario: Open ebay and search for dell laptop
    Given I am on ebay homepage
    And I search for "dell laptops"
    Then results should be shown
