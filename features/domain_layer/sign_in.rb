module SignIn
  class << self
    def login_as_register_user (username, password)
      HomePage.signIn
      SignIn.enter_details_and_submit(username, password)
    end

    def verifyOnLoginPage
      assert_equal SignInPage.getLoginPageHeader.text.include?(WELCOME_MESSAGE_SIGNIN_PAGE), true
    end
  end
end
