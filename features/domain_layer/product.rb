module Product
  class << self
    def verifyOnProductPage product_name
      assert_equal ProductPage.getProductHeader.text.include?("#{product_name}"), true
    end

    def addToCart
      ProductPage.addToCart
    end

    def verifyproductdetails
      assert_equal ProductPage.getPrice,$price
    end
  end
end