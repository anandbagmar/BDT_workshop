
module SearchPage
  class << self
    def getSearchResultHeader
      $SESSION_DATA.mysession.find(:xpath, "//div[@id='TopPanelDFItemCount']/div/span[1]")
    end

    def selectFirstItem(item_title)
      $price =  $SESSION_DATA.mysession.find(:xpath, "//table[@class='li rsittlref'][position()=1]//div[@class='g-b']").text.to_s
      $SESSION_DATA.mysession.first(:link, "#{item_title}").click

    end

    def getFirstItemPrice
    return $SESSION_DATA.mysession.find(:xpath, "//table[@class='li rsittlref' AND @r='1']/tbody/tr/td[@class='prc']/div[@class='g-b']").text
    end

  end
end


