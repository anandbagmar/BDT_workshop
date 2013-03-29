Given /^I am on ebay homepage$/ do
  on_page(:home).openHomePage
end

When /^I search for "([^"]*)"$/ do |search_para|
  on_page(:home).searchForSomething(search_para)
end

Then /^results should be shown$/ do
  on_page(:search).verifySearchResultsPresent
end