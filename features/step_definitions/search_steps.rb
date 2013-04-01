
When /^I select the first "([^"]*)" laptop from the search results page$/ do |item_title|
  Search.verifySearchResultsPresent
  Search.selectFirstItemWithTitle(item_title)
  Product.verifyOnProductPage(item_title)
end