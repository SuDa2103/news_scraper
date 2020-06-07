require 'open-uri'
require 'nokogiri'

class Scraper
  def scrape(url, search)
    html_file = open(url).read
    html_doc = Nokogiri::HTML(html_file)
    counter = 0
    html_doc.search(search).each do |element|
      counter += 1
      if counter < 16
        link = element.attribute('href').value
        text = element.children.text
      end
      { link: link, text: text }
    end
  end
end
