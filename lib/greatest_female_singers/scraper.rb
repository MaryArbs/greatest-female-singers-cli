require 'open-uri'
require 'nokogiri'
require 'pry'

class Scraper
  
  def self.scrape_page
    Nokogiri::HTML(open("https://www.imdb.com/list/ls064792627/"))
  end
  binding.pry 
end 