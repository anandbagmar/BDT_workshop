
module Search

  def searchForProduct

  end

  def verifySearchResultsPresent
    assert_equal @session.find(:xpath, "//div[@id='TopPanelDFItemCount']/div/span[1]").visible?, true
    assert_equal @session.find(:xpath, "//div[@id='TopPanelDFItemCount']/div/span[1]").text.include?("dell laptops"), true
  end
end