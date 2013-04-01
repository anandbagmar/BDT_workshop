
When /^I select the first "([^"]*)" item from the search results page$/ do |item_title|
  Search.selectFirstItemWithTitle(item_title)
  Product.verifyOnProductPage(item_title)
end