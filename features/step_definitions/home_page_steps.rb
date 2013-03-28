Given /^I am on ebay homepage$/ do
  @homePage = HomePage.new(Capybara.current_session)
  @homePage.openHomePage()
end

When /^I search for "([^"]*)"$/ do |search_para|
  @homePage.searchForSomething(search_para)
end

Then /^results should be shown$/ do
  @searchPage = SearchPage.new(Capybara.current_session)
  @searchPage.verifySearchResultsPresent
end