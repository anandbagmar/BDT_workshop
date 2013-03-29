#
#class SearchPage < BasePage
#
#  def selectItemWithTitle item_title
#    @session.first(:link, "#{item_title}").click
#    assert_equal @session.find(:xpath, "//h1").text.include?("Dell Inspiron"), true
#  end
#
#end
#


module SearchPage
  class << self
    def getSearchResultHeader
      $SESSION_DATA.mysession.find(:xpath, "//div[@id='TopPanelDFItemCount']/div/span[1]")
    end
  end
end


