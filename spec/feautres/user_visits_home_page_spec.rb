require "rails_helper"

feature "User visits homepage" do
  scenario "successfully" do
    visit root_url
    expect(page).to have_css 'h1', text: 'Scraping news sites without API'
  end
end