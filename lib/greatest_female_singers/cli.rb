require 'open-uri'
require 'nokogiri'
require 'pry'
require_relative '../greatest_female_singers.rb'

class GreatestFemaleSingers::CLI 
  

  
  def call
    GreatestFemaleSingers::Scraper.scrape_index
   
   
  

  