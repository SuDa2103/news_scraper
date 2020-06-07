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
    ScrapeJob.perform_later
  end

  def model
  end
end
