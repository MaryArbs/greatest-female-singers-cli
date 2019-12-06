require 'open-uri'
require 'nokogiri'
require 'pry'
require_relative '../greatest_female_singers.rb'

class Scraper


  def self.scrape_list_of_singers
  artist_base_url = "http://imdb.com"
   site = "https://www.imdb.com/list/ls064792627/"
   doc = Nokogiri::HTML(open(site))
   singer_list = doc.css("h3.lister-item-header")
   singer_list.each do |section|
    name = section.css('a').text
    profile_url = artist_base_url + section.css('a').attribute('href')
    Singer.new(name, profile_url)
    end

   end

 def self.scrape_singer_info(singer_obj)
    site = ("https://www.imdb.com" + "/name/nm0291349?ref_=nmls_hd")
      doc = Nokogiri::HTML(open(site))
      born = doc.css("div #name-born-info").text.strip.gsub("\n", "")  #need to get rif of extra white spaces
      bio = doc.css('#name-bio-text div').text.strip
     # need to get rid of more spaces here
      # trademark = doc.css ("div#dyk-trademark").children[1].text
      nickname = doc.css("div#dyk-nickname").children[2].text

      #Use a find_by_name to retrieve the artist, and then set all their attributes
  end
 end
# scraper = Scraper.new
 # Scraper.scrape_list_of_singers
 # Scraper.scrape_singer_info("Aretha Franklin")
