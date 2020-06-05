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

    url2 = 'https://a16z.com/'
    html_file2 = open(url2).read
    html_doc2 = Nokogiri::HTML(html_file2)
    @links2 = html_doc2.search('.post-popular h3 a')

    url3 = 'https://greylock.com/category/greymatter/'
    html_file3 = open(url3).read
    html_doc3 = Nokogiri::HTML(html_file3)
    @links3 = html_doc3.search('.post-article__info-title a')

    url4 = 'https://www.bvp.com/atlas'
    html_file4 = open(url4).read
    html_doc4 = Nokogiri::HTML(html_file4)
    @links4 = html_doc4.search('.post-title')

    url5 = 'https://www.indexventures.com/perspectives/category/insights/'
    html_file5 = open(url5).read
    html_doc5 = Nokogiri::HTML(html_file5)
    @links5 = html_doc5.search('.index-grid__list-item a')

    url6 = 'https://www.sequoiacap.com/build/'
    html_file6 = open(url6).read
    html_doc6 = Nokogiri::HTML(html_file6)
    @links6 = html_doc6.search('.build a')
  end
end
