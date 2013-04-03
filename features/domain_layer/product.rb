module Domain
  module Product
    class << self
      def verifyOnProductPage product_name
        assert_equal Page::ProductPage.getProductHeader.text.include?("#{product_name}"), true
      end

      def addToCart
        Page::ProductPage.addToCart
      end

      def verifyproductdetails
        assert_equal Page::ProductPage.getPrice, $price
      end
    end
  end
end