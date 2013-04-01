include Test::Unit::Assertions
module Search
  class << self
    def searchForProduct search_para
      HomePage.searchFor search_para
    end

    def verifySearchResultsPresent
      assert_equal SearchPage.getSearchResultHeader.visible?, true
    end

    def selectFirstItemWithTitle item_title
      SearchPage.selectFirstItem item_title
    end
  end
end