
module HomePage

  class << self

    def openHomePage
      $SESSION_DATA.mysession.visit HOMEPAGE
    end

    def searchFor search_para
      $SESSION_DATA.mysession.fill_in("gh-ac", :with => search_para)
      $SESSION_DATA.mysession.click_button 'Search'
    end

    def signIn
      $SESSION_DATA.mysession.click_link 'Sign in'
    end
  end
end

