
Then /^I should be redirected to the login page$/ do
  on_page(:sign_in).verifyOnSignInPage
end