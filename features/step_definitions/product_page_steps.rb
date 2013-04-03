
When /^I add it to my shopping cart$/ do
  Domain::Product.addToCart
end

Then /^I should see correct product details$/ do
  Domain::Product.verifyproductdetails
end
