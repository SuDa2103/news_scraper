require 'open-uri'
require 'nokogiri'

class PagesController < ApplicationController
  def home
  end

  def about
  end

  def layout
  end

  def retry
  end

  def faster
    url = 'https://www.accel.com/'
    html_file = open(url).read
    html_doc = Nokogiri::HTML(html_file)
    @links = html_doc.search('.top-of-mind-preview a')

    url1 = 'https://www.ggvc.com/engage/'
    html_file1 = open(url1).read
    html_doc1 = Nokogiri::HTML(html_file1)
    @links1 = html_doc1.search('.ct-link')
  end
end
