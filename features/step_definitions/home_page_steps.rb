Given /^I search for "([^"]*)"$/ do |search_para|
  Domain::Navigation.navigateToHomepage
  Domain::Search.searchForProduct(search_para)
  Domain::Search.verifySearchResultsPresent
end

Given /^as a registered user I search for "([^"]*)"$/ do |search_para|
  Domain::Navigation.navigateToHomepage
  Domain::SignIn.login_as_register_user
  Domain::Search.searchForProduct(search_para)
  Domain::Search.verifySearchResultsPresent
end

