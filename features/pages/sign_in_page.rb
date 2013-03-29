class SignInPage < BasePage
  # To change this template use File | Settings | File Templates.

  def verifyOnSignInPage
    assert_equal @session.find(:xpath, "//span[@id='mainContent']").text.include?(WELCOME_MESSAGE_SIGNIN_PAGE), true
  end

end