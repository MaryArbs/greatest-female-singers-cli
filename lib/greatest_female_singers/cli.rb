require 'open-uri'
require 'nokogiri'
require 'pry'

class CLI
  
  def call 
    
    input = ""
    while input != "exit"
    
    puts "Welcome to Greatest Female Singers of all time!"
    puts  "Who do YOU think is the greatest female singer of all time?"
    puts  "To choose Diana Ross, type 'Diana Ross'."
    puts  "To choose Tina Turner, type 'Tina Turner'."
    puts  "To choose Aretha Frankling, type 'Aretha Franklin'."
    puts  "To choose Whitney Houston, type 'Whiteney Houston'. "
    
    input gets.strip 
    
    case input 
    
    when 'Diana Ross'
      diana_ross
    
    when 'Tina Turner'
      tina_turner
     
    when 'Aretha Franklin'
       aretha_franklin
    
    when 'Whitney Houston'
      whitney_houston
   
    when 'list singers'
      list_singers
      
     else 
      puts "Please make a choice."
  
  end 
  
  def diana_ross
  end
  
  def tina_turner
  end 
  
  def aretha_franklin
  end 
  
  def whitney_houston
  end 
end 
  
  def list_singers
    puts "Here are the greatest female singers!"
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