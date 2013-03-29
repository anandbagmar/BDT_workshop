
Given /^I search for "([^"]*)"$/ do |search_para|
  on_page(:home).openHomePage
  on_page(:home).searchForSomething(search_para)
end

Then /^results should be shown$/ do
  on_page(:search).verifySearchResultsPresent
end