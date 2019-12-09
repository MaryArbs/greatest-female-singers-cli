class CLI

  attr_accessor :user_input


  def call
     puts "Welcome, friends!".green
     Scraper.scrape_list_of_singers
     singer_quiz
  end

   def start
      display_list_of_singers
      display_singer_info (user_input)
      more_info
   end

   def singer_quiz
    input = nil
    puts "Quiz time! Who do you think is the top female singer of all time?"
    puts "1. Diana Ross"
    puts "2. Tina Turner"
    puts "3. Mariah Carey"
    puts "4. Tina Turner"
    puts "5. Aretha Franklin"
    puts "Enter a number 1-5."
    input = gets.chomp
     if input == "1"
      puts "Close, but no.".red
     elsif input == "2"
      puts "Close, but no.".red
    elsif input == "3"
      puts "Close, but no.".red
    elsif input == "4"
      puts "I agree she is the BEST, but still no.".red
     elsif input == "5"
      puts "WOOHOO! You got it!".blue
    else
      singer_quiz
    end
  try_again
 end

 def try_again
  puts "Would you like to try again or see the list of singers?"
  puts "To try again enter, 'y'."
  puts "To see the list of singers enter, 'list'."
  input = gets.chomp
  case input
  when 'y'
    singer_quiz
  when 'list'
    start
  end
end


   def display_list_of_singers
     puts "Here are the top 50 Greatest Female Singers according to IMdb!".green
     Singer.print_with_index
   end

  def user_input
     puts "Please choose a number between 1- #{Singer.all.size} to learn more about a one of these awesome Singers.".green
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
     puts "Let's take a closer look at the singer you chose!".green
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
      puts "Would you like like to choose another singer?".green
      puts "To look at the list of singers again, enter 'list'."
      puts "To leave the program enter 'exit'."
      puts "So, what will it be?"
      input = gets.chomp

     case input
      when 'list'
        display_list_of_singers
        display_singer_info (user_input)
      when 'exit'
        see_you
        exit
      end
     end
    end

    def see_you
      puts "Thank you for coming, see you soon!".blue
    end
  end
