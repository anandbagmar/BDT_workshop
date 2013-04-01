module SignInPage
  class << self
    def getLoginPageHeader
      $SESSION_DATA.mysession.find(:xpath, "//span[@id='mainContent']")
    end

    def openHomePage
      puts "in openHomePage"
      $SESSION_DATA.mysession.visit HOMEPAGE
    end

    def enter_details_and_submit (username, password)
      $SESSION_DATA.mysession.fill_in("userid", :with => username)
      $SESSION_DATA.mysession.fill_in("pass", :with => password)
      $SESSION_DATA.mysession.click_button 'Sign in'
    end

  end
end