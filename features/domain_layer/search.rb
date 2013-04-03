include Test::Unit::Assertions
module Domain
  module Search
    class << self
      def searchForProduct search_para
        Page::HomePage.searchFor search_para
      end

      def verifySearchResultsPresent
        assert_equal Page::SearchPage.getSearchResultHeader.visible?, true
      end

      def selectFirstItemWithTitle item_title
        Page::SearchPage.selectFirstItem item_title
      end
    end
  end
end