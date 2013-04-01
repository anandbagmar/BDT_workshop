
module ProductPage
  class << self
    def getProductHeader
      $SESSION_DATA.mysession.find(:xpath, "//h1")
    end

    def addToCart
      $SESSION_DATA.mysession.find(:link, "Add to Cart").click
    end

    def getPrice
      return $SESSION_DATA.mysession.find_by_id("v4-27").text
    end
  end
end