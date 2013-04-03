
When /^I select the first "([^"]*)" item from the search results page$/ do |item_title|
  Domain::Search.selectFirstItemWithTitle(item_title)
  Domain::Product.verifyOnProductPage(item_title)
end