#
#class SearchPage < BasePage
#
#  def selectItemWithTitle item_title
#    @session.first(:link, "#{item_title}").click
#    assert_equal @session.find(:xpath, "//h1").text.include?("Dell Inspiron"), true
#  end
#
#end
#
