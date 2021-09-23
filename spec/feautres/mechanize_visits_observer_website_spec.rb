require "rails_helper"

feature "Meachanize searcges for title" do
  result = ObserverScraper.mechanize_result('East Village')
  
  scenario "the expected value" do
     expect(result).to include "Search"
  end
end