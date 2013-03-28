Given /^I am on ebay homepage$/ do
  openHomePage()
end

When /^I search for "([^"]*)"$/ do |search_para|
  searchForSomething(search_para)
end

Then /^results should be shown$/ do
  verifySearchResultsPresent
end