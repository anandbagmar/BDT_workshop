
Then /^I should be redirected to the login page$/ do
  Domain::SignIn.verifyOnLoginPage
end