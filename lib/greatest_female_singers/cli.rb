# require 'open-uri'
# require 'nokogiri'
# require 'pry'
# require_relative '../greatest_female_singers.rb'


class CLI

  attr_accessor :user_input

 def call
    puts "Welcome, friends!"
    puts "Here are the top 50 Greatest Female Singers according to IMdb!"
    Scraper.scrape_list_of_singers
    Singer.print_with_index
    singer = user_input
    display_singer_info (singer)
    more_info
  end

 def user_input
    puts "Please choose a number between 1- #{Singer.all.size} to learn more about a one of these awesome Singers."
      input = gets.chomp.to_i
    until valid_input?(input)
       puts "Please try again. Select a number 1-50."
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
    more_info

   end

   def more_info
     puts "Would you like to choose another singer? Enter 'y' or 'n'."
     input = gets.chomp

     if input == "n" || "N"
       exit
     else
       puts "Please try again."
       input = gets.chomp
     end

     if
     input == "y" || "Y"
      call
     end
   end
 end
