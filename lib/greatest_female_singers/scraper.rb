require 'open-uri'
require 'nokogiri'
require 'pry'
require_relative '../greatest_female_singers.rb'

class GreatestFemaleSingers::Scraper
  
  def self.scrape_index_page(index_url)
   site = "https://www.imdb.com/list/ls064792627/"
   doc = Nokogiri::HTML(open(site))
   singers = []
  
   list_of_singers = doc.css("h3.lister-item-header")
   list_of_singers.each.with_index(1) {|section, index| 
   #make the artist instance here with name and profile url 
    puts  "#{index}." + section.css('a').text}
    profile_url = "https://www.imdb.com" + "/name/nm0291349?ref_=nmls_hd"
    singer_info = {:list_of_singers => "name", :profile_url => "profile_url"}
    singers << singer_info
    
  end 
    

  def self.scrape_singer_info(singer_obj) # how do access ^ profile_url?? 
    singer_hash = {} 
    site = ("https://www.imdb.com" + "/name/nm0291349?ref_=nmls_hd")
    doc = Nokogiri::HTML(open(site))
    born = doc.css("div #name-born-info").text.strip.gsub("\n", "")  #need to get rif of extra white spaces 
    bio = doc.css('#name-bio-text div').text.strip  # need to get rid of more spaces here 
    trademark = doc.css ("div #dyk-trademark") #will not let me do .text (hr tag?)
    nickname = doc.css ("div #dyk-nickname")
    #Use a find_by_name to retrieve the artist, and then set all their attributes 
    GreatestFemaleSingers::Singer.new(ame, born, bio, trademark, nickname, profile_url)
    
    
   
    
    
    
   
    
   
    
    
  end 
end 

# GreatestFemaleSingers::Scraper.scrape_index_page

