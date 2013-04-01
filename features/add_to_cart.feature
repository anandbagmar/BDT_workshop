Feature: Search for an item an be able to add to shopping cart

  Scenario: Search for dell laptops and verify search results for a guest user
    Given I search for "Dell Laptops"
    When I select the first "Dell Inspiron" item from the search results page
    And I add it to my shopping cart
    Then I should be redirected to the login page

 Scenario: Scenario to Verify Product Details For Registered User
  Given as a registered user I search for "Samsung Laptops"
  When I select the first "Samsung" item from the search results page
  Then I should see correct product details
