
module SignInPage
  class << self
    def getLoginPageHeader
      $SESSION_DATA.mysession.find(:xpath, "//span[@id='mainContent']")
    end
  end
end