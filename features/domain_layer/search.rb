module Search
  class << self
    def searchForProduct search_para
      HomePage.searchFor search_para
    end

    def verifySearchResultsPresent
      assert_equal @session.find(:xpath, "//div[@id='TopPanelDFItemCount']/div/span[1]").visible?, true
      assert_equal @session.find(:xpath, "//div[@id='TopPanelDFItemCount']/div/span[1]").text.include?("dell laptops"), true
    end
  end
end