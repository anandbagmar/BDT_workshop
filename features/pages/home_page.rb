
module HomePage
  def openHomePage
    visit HOMEPAGE
  end

  def searchForSomething search_para
    fill_in("gh-ac", :with => 'dell laptop')
    click_button 'Search'
  end
end

World(HomePage)