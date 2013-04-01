Given /^I search for "([^"]*)"$/ do |search_para|
  Navigation.navigateToHomepage
  Search.searchForProduct(search_para)
  Search.verifySearchResultsPresent
end

Given /^as a registered user I search for "([^"]*)"$/ do |search_para|
  Navigation.navigateToHomepage
  SignIn.login_as_register_user
  Search.searchForProduct(search_para)
  Search.verifySearchResultsPresent
end

