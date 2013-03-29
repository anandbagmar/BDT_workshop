
class SearchPage < BasePage

  def verifySearchResultsPresent
    assert_equal @session.find(:xpath, "//div[@id='TopPanelDFItemCount']/div/span[1]").visible?, true
    assert_equal @session.find(:xpath, "//div[@id='TopPanelDFItemCount']/div/span[1]").text.include?("dell laptops"), true
  end

  def selectItemWithTitle item_title
    @session.first(:link, "#{item_title}").click
    assert_equal @session.find(:xpath, "//h1").text.include?("Dell Inspiron"), true
  end

end

