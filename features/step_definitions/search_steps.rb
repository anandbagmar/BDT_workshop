
When /^I select the first "([^"]*)" laptop from the search results page$/ do |item_title|
  on_page(:search).verifySearchResultsPresent
  on_page(:search).selectItemWithTitle(item_title)
end