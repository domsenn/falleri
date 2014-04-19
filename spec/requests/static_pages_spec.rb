require 'spec_helper'

describe "Static pages" do
  let(:base_title) { "falleri - Schweizer Kinderlieder | " }

  describe "Home page" do

    it "should have the content 'falleri'" do
      visit '/static_pages/home'
      expect(page).to have_content('falleri')
    end

    it "should have the right title" do
    	visit '/static_pages/home'
    	expect(page).to have_title("falleri - Schweizer Kinderlieder")
    end

  end

  describe "Help page" do

    it "should have the content 'Hilfe'" do
      visit '/static_pages/help'
      expect(page).to have_content('Hilfe')
    end

    it "should have the right title" do
    	visit '/static_pages/help'
    	expect(page).to have_title("#{base_title} Hilfe")
    end

  end

  describe "About page" do

    it "should have the content 'Über uns'" do
      visit '/static_pages/about'
      expect(page).to have_content('Über uns')
    end

    it "should have the right title" do
    	visit '/static_pages/about'
    	expect(page).to have_title("#{base_title} Über uns")
    end

  end

  describe "Contact page" do

    it "should have the content 'Kontakt'" do
      visit '/static_pages/contact'
      expect(page).to have_content('Kontakt')
    end

    it "should have the right title" do
    	visit '/static_pages/contact'
    	expect(page).to have_title("#{base_title} Kontakt")
    end

  end

end
