require 'open-uri'
require 'nokogiri'
require 'pry'
require_relative '../greatest_female_singers.rb'


class CLI

  attr_accessor :user_input

 def call
    puts "Welcome to the top 50 Greatest Female Singers!"
    list_singers
    user_input
    display_singer_info
  end

  def list_singers
    puts "Here are the top 50 Greatest Female Singers according to IMdb!"
    Scraper.scrape_index_page


  end

  def user_input(input)
    input = ""
    while input != "exit"
    puts "Please choose a number to learn more about a singer, if you would like to exit the program type 'exit'."
    input gets.strip.to_i
   end
  end

  def display_singer_info (singer_obj)
    puts "Let's take a closer look!"
    Scraper.scrape_singer_info(singer_obj)
    puts name: + "#{singer.name}"
    puts born: + "#{singer.born}"
    puts bio:  + "#{singer.bio}"
    puts trademark: + "#{singer.trademark}"
    puts nickname: + "#{singer.nickname}"
    binding.pry

  end
 end

scraper = CLI.new
scraper.display_singer_info("Whitney Houston")
