require 'rails_helper'

describe "Startup resources", :type => :feature do
  
  let(:user){ create(:user) }
  
  before(:each) do
    create(:startup_resource)
  end

  it "lets me view them" do
    visit startup_resources_path 
    expect(page).to have_content 'Detailed Block'
  end
  
  it "lets me start to create one" do
    visit "/"
    click_link "Resources"
    expect(page).to have_link 'New Startup resource'
  end
  
  it "let me create one" do
    visit "/"
    click_link "Resources"
    click_link 'New Startup resource'
    within("#new_startup_resource") do
      fill_in "Category", with: "University"
      fill_in "Name", with: "Ventureprise"
      fill_in "Url", with: "http://www.ventureprise.org/"
      click_button 'Create Startup resource'
    end
    expect(page).to have_content("Ventureprise")
  end
end
