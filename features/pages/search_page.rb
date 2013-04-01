
module SearchPage
  class << self
    def getSearchResultHeader
      $SESSION_DATA.mysession.find(:xpath, "//div[@id='TopPanelDFItemCount']/div/span[1]")
    end

    def selectFirstItem(item_title)
      $SESSION_DATA.mysession.first(:link, "#{item_title}").click
    end
  end
end


