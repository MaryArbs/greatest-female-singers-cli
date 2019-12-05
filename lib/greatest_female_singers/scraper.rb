require 'open-uri'
require 'nokogiri'
require 'pry'
require '..lib/greatest_female_singers.rb'

class GreatestFemaleSingers::Scraper
  
  def self.scrape_index_page(index_url)
   site = "https://www.imdb.com/list/ls064792627/"
   doc = Nokogiri::HTML(open(site))
   singers = []
  
   list_of_singers = doc.css("h3.lister-item-header")
   list_of_singers.each.with_index(1) {|section, index| 
    puts  "#{index}." + section.css('a').text}
    profile_url = "https://www.imdb.com" + "/name/nm0291349?ref_=nmls_hd"
    singer_info = {:list_of_singers => "name", :profile_url => "profile_url"}
    singers << singer_info
  end 
  singers 
    
  # list_of_singers = doc.css("h3.lister-item-header")
  # list_of_singers.each.with_index(1) {|section, index| 
  #   puts  "#{index}." + section.css('a').text}
  #   singers << list_of_singer
  #   url = section.css ('a')[0]['href']
  # end 
  
  def self.scrape_profile_page (profile_url)
    
  end 
end 

 #main > div > div.lister.list.detail.sub-list > div.lister-list > div:nth-child(1) > div.lister-item-content > h3 > a
 #main > div > div.lister.list.detail.sub-list > div.lister-list > div:nth-child(2) > div.lister-item-content > h3 > a
 
 <a href="/name/nm0291349?ref_=nmls_hd"> Aretha Franklin
</a>
<a href="/name/nm0291349?ref_=nmls_hd"> Aretha Franklin
</a>