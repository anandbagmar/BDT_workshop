
When /^I select an item as "([^"]*)"$/ do |item_title|
  on_page(:search).selectItemWithTitle(item_title)
end