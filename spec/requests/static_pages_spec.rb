require 'spec_helper'

describe "Static Pages" do
  
  let(:base_title) {"School Report Forum"}
  
  describe "Home page" do
    it "should have the h1 'School Report Forum'" do
      visit root_path
      page.should have_selector('h1', text: "School Report Forum")
    end
    it "should have the title 'School Report Forum'" do
      visit root_path
      page.should have_selector('title', text: "School Report Forum")
    end
    it "should not have a custom page title" do
      visit root_path
      page.should_not have_selector('title', text: '| Home')
    end
  end
    
  describe "help page" do
    it "Should have the content 'Help'" do
      visit help_path  
      page.should have_selector('h1', text: "Help")
    end
    it "should have the title 'Help'" do
      visit help_path
      page.should have_selector('title', text: "#{base_title} | Help")
    end
  end
  
  describe "About page" do
    it "should have the content 'About Us'" do
      visit about_path
      page.should have_selector('h1', text: "About")
    end
    it "should have the title 'About'" do
      visit about_path
      page.should have_selector('title', text: "#{base_title} | About")
    end
  end 
  
  describe "Contact Us" do
    it "should have the h1 'Contact Us'" do
      visit contact_path
      page.should have_selector('h1', text: "Contact Us")
    end
    it "should have the title 'Contact Us'" do
      visit contact_path
      page.should have_selector('title', text: "#{base_title} | Contact Us")
    end
  end 
end
