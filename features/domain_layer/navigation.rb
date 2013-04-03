module Domain
  module Navigation
    class << self
      def navigateToHomepage
        Page::HomePage.openHomePage
      end
    end
  end
end
