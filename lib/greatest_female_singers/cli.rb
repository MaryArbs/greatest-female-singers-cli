require 'open-uri'
require 'nokogiri'
require 'pry'
require_relative '../greatest_female_singers.rb'


class CLI

  attr_accessor :user_input

 def call
    puts "Welcome to the top 50 Greatest Female Singers!"
    Scraper.scrape_list_of_singers
    list_singers
    user_input
    valid_input
    scrape_and_display_singer_name
    display_singer_info
  end

  def display_list_of_singers
    puts "Here are the top 50 Greatest Female Singers according to IMdb!"
    Singer.print_with_index
   end

  def user_input(input)
    input = ""
    while input != "exit"
    puts "Please choose a number between 1- #{Singer.all.size}to learn more about a one of these awesome Singers."
    input = gets.chomp.to_i
    until valid_input(input)
      puts "Please try again. Choose a number 1-50."
      input = gets.chomp.to_i
     end
     end
    puts "Cool! Let's learn more!"
   end

  def valid_input(input)
    input.between?(1, Singer.all.size)
  end

  def scrape_and_display_singer_name(input)
    Singer.find_by_index(input.to_i - 1)
  end

  def display_singer_info (singer_obj)
    puts "Let's take a closer look at the singer you chose!"
    Scraper.scrape_singer_info(singer_obj)
    puts name: + "#{singer_obj.name}"
    puts ""
    puts born: + "#{singer_obj.born}"
    puts ""
    puts bio:  + "#{singer_obj.bio}"
    puts ""
    puts trademark: + "#{singer_obj.trademark}"
    puts ""
    puts nickname: + "#{singer_obj.nickname}"
    binding.pry
   end
 end


CLI.new.display_list_of_singers
# CLI.new.display_singer_info("Aretha Franklin")
