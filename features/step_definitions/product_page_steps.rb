
When /^I add it to my shopping cart$/ do
  Product.addToCart
end

Then /^I should see correct product details$/ do
  verifyproductdetails
  logout
end
