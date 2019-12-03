 require 'open-uri'
require 'nokogiri'
require 'pry'

class CLI
  
  def call 
    
    input = ""
    while input != "exit"
    
    puts "Welcome to Top Ten Greatest Female Singers!"
    puts "To guess the number one greatest female singer, enter 'guess singer'."
    puts "To see the list of top ten greatest female singers, enter 'list singers'."
    puts "To quit, type 'exit'."
    puts "So, what will it be?"
    
    input gets.strip 
    
    case input 
    
    when 'guess singer'
      guess_singer
    
    when 'list singers'
      list_singers
      
    # when 'exit'
      # exit 
    
    else 
    puts "Please make a choice."
  
  end 
  
  def guess_singer
  end 
  
  def list_singers
    puts "Here are the top ten greatest female singers!"
    Singer.all.each.with_index(1) do |singer, idex|
      puts "#{idex}. #{singer.name}"
    
    puts "Enter a number 1-#{Singer.all.size} to find out more about a singer."
    input = gets.chomp.to_i
    
    if valid_input(input)
      puts "Cool! Let's learn more!"
    else 
      puts "Try again. You need to enter a number 1-10."
      input = gets.chomp.to_i
    end
    
  def valid_input(input)
    input.between?(1,Singer.all.size)
  end 
  

  
end 