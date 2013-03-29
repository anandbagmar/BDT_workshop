
When /^I add it to my shopping cart$/ do
  on_page(:product).addToCart
end