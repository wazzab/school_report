require 'spec_helper'

  describe "Static Pages" do
    describe "Home page" do
      it "should have the content 'sample App'" do
        visit '/static_pages/home'
        page.should have_content('Sample App')
      end
    end
    
  describe "help page" do
    it "Should have the content 'Helpy'" do
      visit '/static_pages/help'  
      page.should have_content('helpy')
    end
  end
  
end
