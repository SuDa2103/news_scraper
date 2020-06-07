require 'open-uri'
require 'nokogiri'

class Scraper
  def scrape(url, search)
    html_file = open(url).read
    html_doc = Nokogiri::HTML(html_file)
    html_doc.search(search)
  end
end
