
When /^I add it to my shopping cart$/ do
  on_page(:product).addToCart
end

Then /^I should see correct product details$/ do
  verifyproductdetails
  logout
end
