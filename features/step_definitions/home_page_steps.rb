Given /^I search for "([^"]*)"$/ do |search_para|
  Navigation1.navigateToHomepage
  #searchForProduct(search_para)
  #verifySearchResultsPresent

  #on_page(:home).openHomePage
  #on_page(:home).searchForSomething(search_para)

end


#
#module Module1
#  class << Module1
#    def self.add(a, b)
#      return a + b
#    end
#    def subtract(a, b)
#      return a - b
#    end
#  end
#end