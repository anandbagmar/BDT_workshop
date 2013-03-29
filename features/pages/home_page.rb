
module HomePage

  class << self

    def openHomePage
      puts "in openHomePage"
      $session.visit HOMEPAGE
    end

    def searchForSomething search_para
      $session.fill_in("gh-ac", :with => search_para)
      $session.click_button 'Search'
    end
  end
end

