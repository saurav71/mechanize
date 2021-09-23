require "rails_helper"

feature "Meachanize searches for title" do
  result = ObserverScraper.find_title('East Village')

  scenario "the expected value" do
     expect(result).to include "Search"
  end
end

feature "Meachanize searches for articles" do
    article_hash = ObserverScraper.find_articles('East Village')
  
    scenario "the expected value" do
       expect(article_hash).not_to be_empty
    end
end