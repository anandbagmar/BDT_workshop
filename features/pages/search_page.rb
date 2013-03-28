module SearchPage

  def verifySearchResultsPresent
    assert_equal find(:xpath, "//div[@id='TopPanelDFItemCount']/div/span[1]").visible?, true
    #assert_equal find(:xpath, "//div[@id='TopPanelDFItemCount']/div/span[1]").contains?,"dell laptop"
  end
end

World(SearchPage)