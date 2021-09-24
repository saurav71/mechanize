class SiteController < ApplicationController 
  
  def index
    @article_hash = Hash.new
    @article_hash = ObserverScraper.find_articles(params[:search]) if params[:search]
  end

end