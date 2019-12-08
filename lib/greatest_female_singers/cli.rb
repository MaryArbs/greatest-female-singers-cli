class CLI

  attr_accessor :user_input


  def call
     puts "Welcome, friends!"
     Scraper.scrape_list_of_singers
     singer_quiz
     display_list_of_singers
     display_singer_info (user_input)
     more_info
   end

   def singer_quiz
     input = nil
     puts "Quiz time! Who do you think is the top female singer of all time?"
     puts "1. Diana Ross"
     puts "2. Whitney Houston"
     puts "3. Aretha Franklin"
     puts "4. Tina Turner"
     puts "5. Mariah Carey"
     puts "Enter a number 1-5."
     until input.to_i > 0  && input.to_i < 6

     input = gets.chomp.to_i
     case input
     when "1"
       puts "Close, but no cigar!"
     when "2"
       puts "Although I agree she is number 1, this is not correct."
     when "3"
       puts "WOOHO, you got it!"
     when "4"
       puts "Cloe, but no cigar!."
     when "5"
       puts "Close, but no cigar!"
     when "6"
       display_list_of_singers
       display_singer_info (user_input)
     end
   end
 end

   def display_list_of_singers
     puts "Here are the top 50 Greatest Female Singers according to IMdb!"
     Singer.print_with_index
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

  def display_singer_info (user_input)
     puts "Let's take a closer look at the singer you chose!"
     Scraper.scrape_singer_info(singer_obj)
     puts ""
     puts "Name:#{singer_obj.name}"
     puts ""
     puts "Born: #{singer_obj.born}"
     puts ""
     puts "Bio: #{singer_obj.bio}"
     puts ""
     puts "Trademark: #{singer_obj.trademark}"
     puts ""
     puts "Nickname: #{singer_obj.nickname}"
     puts ""
     puts ""
     more_info

  end

    def more_info
     input = nil
     while input != 'exit'
      puts "Would you like like to choose another singer?"
      puts "To look at the list of singers again, enter 'list'."
      puts "To leave the program enter 'exit'."
      puts "So, what will it be?"
      input = gets.chomp

      case input
      when 'list'
        display_list_of_singers
        display_singer_info (user_input)
      when 'exit'
        exit
      end
      end
    end
 end
