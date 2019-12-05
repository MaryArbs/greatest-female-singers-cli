require 'open-uri'
require 'nokogiri'
require 'pry'
require_relative '../greatest_female_singers.rb'

class GreatestFemaleSingers::CLI 
  

  
  def call
    
    puts "Welcome to the top 50 Greatest Female Singers!"
  end 
  
  def list_singers
    puts "Here are the top 50 Greatest Female Singers!"
    GreatestFemaleSingers::Scraper.scrape_index
  end 
  
  def user_input(input)
    puts "Please choose a number to learn more about a singer."
    
    input = ""
    while input != "exit"
    input gets.strip 

  end 
  
  def display_singer_info
    puts "Let's take a closer look!"
    GreatestFemaleSingers::Scraper.scrape_singer_info
    puts name: + "#{singer.name}"
    puts born: + "#{singer.born}"
    puts bio:  + "#{singer.bio}"
    puts trademark: + "#{singer.trademark}"
    puts nickname: + "#{singer.nickname}"
  end 
   
   
  

  