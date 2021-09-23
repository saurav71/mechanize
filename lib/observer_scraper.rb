module ObserverScraper
  def self.mechanize_result(search_value)
    agent = Mechanize.new
    url = 'https://observer.com/?s=' + search_value.gsub(/\W/,"+")
    page = agent.get(url).search(".page-title")
    page.text
  end
end