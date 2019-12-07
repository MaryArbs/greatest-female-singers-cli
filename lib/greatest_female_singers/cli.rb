# require 'open-uri'
# require 'nokogiri'
# require 'pry'
# require_relative '../greatest_female_singers.rb'


class CLI

  attr_accessor :user_input

 def call
    puts "Welcome, friends!"
    Scraper.scrape_list_of_singers
    display_list_of_singers
    singer = user_input
    display_singer_info (singer)
  end

   def display_list_of_singers
      puts "Here are the top 50 Greatest Female Singers according to IMdb!"
      Singer.print_with_index
    end

    def user_input
    puts "Please choose a number between 1- #{Singer.all.size} to learn more about a one of these awesome Singers."
      input = gets.chomp.to_i
     until valid_input?(input)
       puts "Try again."
     input = gets.chomp.to_i #send user back to line 24
     end
      Singer.find_by_index(input.to_i - 1)
      #return singer object
   end

    def valid_input?(input)
      input.between?(1, Singer.all.size)
    end

  def display_singer_info (singer_obj)
    puts "Let's take a closer look at the singer you chose!"
    Scraper.scrape_singer_info(singer_obj)
    puts "Name: #{singer_obj.name}"
    puts ""
    puts "#{singer_obj.born}"
    puts ""
    puts  " Bio: #{singer_obj.bio}"
    puts ""
    puts  " Trademark: #{singer_obj.trademark}"
    puts ""
    puts  "Nickname: #{singer_obj.nickname}"
    puts ""
    puts ""
    puts ""

   end
 end
