
module ProductPage
  class << self
    def getProductHeader
      $SESSION_DATA.mysession.find(:xpath, "//h1")
    end

    def addToCart
      $SESSION_DATA.mysession.find(:link, "Add to Cart").click
    end
  end
end