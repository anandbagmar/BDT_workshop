include Test::Unit::Assertions

class SearchPage
  def initialize session
    @session = session
  end

  def verifySearchResultsPresent
    assert_equal @session.find(:xpath, "//div[@id='TopPanelDFItemCount']/div/span[1]").visible?, true
    #assert_equal find(:xpath, "//div[@id='TopPanelDFItemCount']/div/span[1]").contains?,"dell laptop"
  end
end

