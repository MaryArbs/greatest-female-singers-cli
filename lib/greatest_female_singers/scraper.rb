require 'open-uri'
require 'nokogiri'
require 'pry'

class GreatestFemaleSingers::Scraper
  
  def self.scrape_singers
   site = "https://www.imdb.com/list/ls064792627/"
   doc = Nokogiri::HTML(open(site))
   list_of_singers = doc.css("h3.lister-item-header")
   list_of_singers.each.with_index(1) {|section, index| 
    puts  "#{index}." + section.css('a').text}
    binding.pry
    
    list_of_singers = Singer.new 
  end 
end 