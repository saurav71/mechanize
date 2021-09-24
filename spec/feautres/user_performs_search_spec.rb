require "rails_helper"

feature "User performs a search" do
  scenario "successfully" do
    visit root_url
    fill_in "search", with: "East Village"
    click_on "Submit"
    expect(page).to have_css 'h2', text: 'East Village'
  end
end