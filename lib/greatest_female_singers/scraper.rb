module GreatestFemaleSingers

class Scraper


  def self.scrape_list_of_singers
   artist_base_url = "http://imdb.com"
   site = "https://www.imdb.com/list/ls064792627/"
   doc = Nokogiri::HTML(open(site))
   singer_list = doc.css("h3.lister-item-header")
   singer_list.each do |section|
   name = section.css('a').text.delete("\n")
   profile_url = artist_base_url + section.css('a').attribute('href')
   Singer.new(name, profile_url)
    end
   end

   def self.scrape_singer_info(singer_obj)
     site = open(singer_obj.profile_url)
     doc = Nokogiri::HTML(open(site))

     singer_obj.born = doc.css("div #name-born-info").text.gsub("\n", "").rstrip.strip.gsub("Born:", "").lstrip.gsub(/\s+/, ' ')

     singer_obj.bio = doc.css('#name-bio-text div div').text.strip.gsub("See full bio", "").gsub(">>", "").gsub("\u00BB", "").delete "\n"

      if doc.css("div#dyk-trademark").empty?
       singer_obj.trademark = "Trademark unknown."
      else
       singer_obj.trademark = doc.css("div#dyk-trademark").text.rstrip.gsub("Trademark:", "").gsub("See more", "").gsub(">>", "").gsub("\u00BB", "").lstrip.delete "\n"
      end

      if doc.css("div#dyk-nickname").empty?
       singer_obj.nickname = "Nickname unknown."
      else
       singer_obj.nickname = doc.css("div#dyk-nickname").text.rstrip.gsub("Nickname:", "").gsub("See more", "").gsub(">>", "").gsub("\u00BB", "").lstrip.delete "\n"
      end
    end
   end
 end
