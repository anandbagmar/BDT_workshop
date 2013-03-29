Given /^I search for "([^"]*)"$/ do |search_para|
  Navigation.navigateToHomepage
  Search.searchForProduct(search_para)
  #Search.verifySearchResultsPresent
end

Given /^as a registered user I search for "([^"]*)"$/ do |search_para|
  Navigation.navigateToHomepage
  Login.login_as_register_user(username="tworker13",password="something1")
  HomePage.verifyUserSuccessfullyLoggedIn
  Search.searchForProduct(search_para)
  Search.verifySearchResultsPresent
end

