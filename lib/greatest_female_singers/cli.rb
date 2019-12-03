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
  

  
end 