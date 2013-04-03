module Domain
  module SignIn
    class << self
      def login_as_register_user
        Page::HomePage.signIn
        Page::SignInPage.enter_details_and_submit("tworker13", "something1")
      end

      def verifyOnLoginPage
        assert_equal Page::SignInPage.getLoginPageHeader.text.include?(WELCOME_MESSAGE_SIGNIN_PAGE), true
      end
    end
  end
end
