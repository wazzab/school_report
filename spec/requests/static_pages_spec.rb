require 'spec_helper'

describe "Static Pages" do
  describe "Home page" do
    it "should have the content 'sample App'" do
      visit '/static_pages/home'
      page.should have_selector('h1', :text => 'Sample App')
    end
    it "should have the title 'Home'" do
      visit '/static_pages/home'
      page.should have_selector('title', :text => " | Home")
    end
  end
    
  describe "help page" do
    it "Should have the content 'Help'" do
      visit '/static_pages/help'  
      page.should have_selector('h1', :text => "Help")
    end
    it "should have the title 'Help'" do
      visit '/static_pages/help'
      page.should have_selector('title', :text => " | Help")
    end
  end
  
  describe "About page" do
    it "should have the content 'About Us'" do
      visit '/static_pages/about'
      page.should have_selector('h1', :text => "About")
    end
    it "should have the title 'About'" do
      visit '/static_pages/about'
      page.should have_selector('title', :text => " | About")
    end
  end  
end
