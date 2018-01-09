require "colorize"

class CookingScraper::CLI

  def  call
       #CookingScraper::Scraper.scrape_coop
       puts "=" * 65
       puts " Let the night sky guide you, take a look at your daily horocope:".colorize(:light_cyan)
       puts "=" * 65
       list_courses #this will be a method i create
       end

  def   list_courses
        puts " Please select your sign, ".colorize(:light_blue)
        puts " enter by number or type 'exit'".colorize(:light_blue)
        puts "  1. Aries".colorize(:light_cyan)
        puts "  2. Taurus".colorize(:light_cyan)
        puts "  3. Gemini".colorize(:light_cyan)
        puts "  4. Cancer".colorize(:light_cyan)
        puts "  5. Leo".colorize(:light_cyan)
        puts "  6. Virgo".colorize(:light_cyan)
        puts "  7. Libra".colorize(:light_cyan)
        puts "  8. Scorpio".colorize(:light_cyan)
        puts "  9. Sagittarius".colorize(:light_cyan)
        puts " 10. Capricorn".colorize(:light_cyan)
        puts " 11. Aquarius".colorize(:light_cyan)
        puts " 12. Pisces".colorize(:light_cyan)
        puts " 13. Dont know my sign, help please!".colorize(:light_cyan)


        input = gets.strip.downcase

         #if else statement here to define options 1-4.
         if    input == "1"
               CookingScraper::Classes.create_category("Breadmaking")
               display_cooking_classes

         elsif input == "2"
               CookingScraper::Classes.create_category("Dessert")
               display_cooking_classes

         elsif input == "3"
               CookingScraper::Classes.create_category("Savory")
               display_cooking_classes

         elsif input == "4"
               CookingScraper::Classes.create_category("All")
               display_cooking_classes

        elsif input == "5"
              CookingScraper::Classes.create_category("All")
              display_cooking_classes

        elsif input == "6"
              CookingScraper::Classes.create_category("All")
              display_cooking_classes

        elsif input == "7"
              CookingScraper::Classes.create_category("All")
              display_cooking_classes

        elsif input == "8"
              CookingScraper::Classes.create_category("All")
              display_cooking_classes

        elsif input == "9"
              CookingScraper::Classes.create_category("All")
              display_cooking_classes

        elsif input == "10"
              CookingScraper::Classes.create_category("All")
              display_cooking_classes

        elsif input == "11"
              CookingScraper::Classes.create_category("All")
              display_cooking_classes

        elsif input == "12"
              CookingScraper::Classes.create_category("All")
              display_cooking_classes

        elsif input == "13"
              CookingScraper::Classes.create_category("All")
              display_cooking_classes

        elsif input == "exit"
              say_goodbye

         else  error
         end
         end #end list courses method

         # a def to display the events ive scraped

  def   error #a def to say that I dont understand what your asking for
        puts " Uh, Oh thats a star sign I dont understand, lets try again".colorize(:light_blue)
        list_courses
        end

  def   no_courses #a def to say there are no events currently
        " I'm sorry there aren't currently any horoscopes, please check back tomorrow".colorize(:light_blue)
        say_goodbye
        end

  def   say_goodbye #a def to say goodbye
        puts " Goodbye!".colorize(:light_blue)
        exit
        end

#this needs work need to figure out how to display by scraped category instead of all and then narrowing down*****************
      #  def display_cooking_classes
      #    CookingScraper::Classes.all.each.with_index(1) do |class, i|
      #      puts "#{i}.".colorize(:light_cyan)
      #      puts "Event: #{class.name.upcase}".colorize(:light_cyan)
      #      puts "Location: #{class.location}".colorize(:light_cyan)
      #      puts "Time: #{class.time}".colorize(:light_cyan)
      #      puts ""
      #    end
      #  end


        end #end class
