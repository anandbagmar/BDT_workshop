include Test::Unit::Assertions
module Login
  class << self
    def login_as_register_user
      HomePage.SignIn
      LoginPage.enter_details_and_submit("tworker13", "something1")
    end

    def verifyOnLoginPage
      assert_equal LoginPage.getLoginPageHeader.text.include?(WELCOME_MESSAGE_SIGNIN_PAGE), true
    end
  end
end
