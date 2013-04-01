include Test::Unit::Assertions
module Product
  class << self
    def verifyOnProductPage product_name
      assert_equal ProductPage.getProductHeader.text.include?("#{product_name}"), true
    end

    def addToCart
      ProductPage.addToCart
    end
  end
end