require 'spec_helper'

describe "Static pages" do
  subject { page }

  ################# HOME PAGE ###################
  describe "Home page" do
    before { visit root_path }

    it { should have_selector('h1', text: 'Sample App') }
    it { should have_selector('title', text: full_title('')) }
    it { should_not have_selector('title', text: '| Home') }
  end

  ################# HELP PAGE ###################
  describe "Help page" do
    before { visit help_path }
    
    it { should have_selector('h1', text: 'Help') }
    it { should have_selector('title', text: full_title('Help')) }
  end

  ################# ABOUT PAGE ###################
  describe "About page" do 
    before { visit about_path }

    it { should have_selector('h1', text: 'About') }
    it { should have_selector('title', text: full_title('About Us')) }
  end

  ################# CONTACT PAGE ###################
  describe "Contact page" do 
    before { visit contact_path }
    
    it { should have_selector('h1', text: 'Contact') }
    it { should have_selector('title', text: full_title('Contact')) }
  end  
end
