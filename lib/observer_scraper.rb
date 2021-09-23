module ObserverScraper

  def self.find_title(search_value)
    page = mechanize_fetch_page(search_value)
    element =  page.search(".page-title")
    element.text
  end
  
  def self.find_articles(search_value)
    page = mechanize_fetch_page(search_value)
    elements =  page.search("article")
    article_hash={}
    elements.each do |element|
      text = element.attributes["data-title"].text
      url = element.attributes["data-url"].text
      article_hash[text] = url
    end  
    article_hash 
  end

  private
  def self.mechanize_fetch_page(search_value)
    agent = Mechanize.new
    agent.get('https://observer.com/?s=' + search_value.gsub(/\W/,"+"))
  end

end