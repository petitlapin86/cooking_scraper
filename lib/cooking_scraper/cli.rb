require "colorize"

class CookingScraper::CLI

  def  call
       puts "=" * 65
       puts " Let the night sky guide you, take a look at your daily horocope:".colorize(:light_blue)
       puts "=" * 65
       list_signs
       end

  def   list_signs

        puts " Please select your sign, enter by number or type 'exit' ".colorize(:light_blue)
        puts "  1.".colorize(:light_blue) + " Aries".colorize(:cyan)
        puts "  2.".colorize(:light_blue) + " Taurus".colorize(:cyan)
        puts "  3.".colorize(:light_blue) + " Gemini".colorize(:cyan)
        puts "  4.".colorize(:light_blue) + " Cancer".colorize(:cyan)
        puts "  5.".colorize(:light_blue) + " Leo".colorize(:cyan)
        puts "  6.".colorize(:light_blue) + " Virgo".colorize(:cyan)
        puts "  7.".colorize(:light_blue) + " Libra".colorize(:cyan)
        puts "  8.".colorize(:light_blue) + " Scorpio".colorize(:cyan)
        puts "  9.".colorize(:light_blue) + " Sagittarius".colorize(:cyan)
        puts " 10.".colorize(:light_blue) + " Capricorn".colorize(:cyan)
        puts " 11.".colorize(:light_blue) + " Aquarius".colorize(:cyan)
        puts " 12.".colorize(:light_blue) + " Pisces".colorize(:cyan)
        puts " 13.".colorize(:light_blue) + " Dont know my sign, help please!".colorize(:cyan)


        input = gets.strip.downcase


        @signs = CookingScraper::Scraper.todays_horoscopes

         if    input == "1"

               display_sign.each_index.detect{|i| i == 1}

         elsif input == "2"
               #CookingScraper::Classes.create_category("Taurus")
               display_sign

         elsif input == "3"
               display_sign

         elsif input == "4"
               display_sign

        elsif input == "5"
              display_sign

        elsif input == "6"
              display_sign

        elsif input == "7"
              display_sign

        elsif input == "8"
              display_sign

        elsif input == "9"
              display_sign

        elsif input == "10"
              display_sign

        elsif input == "11"
              display_sign

        elsif input == "12"
              display_sign

        elsif input == "13"
              whats_my_sign

        elsif input == "exit"
              say_goodbye

         else  error
         end
         end #end list courses method

  def   error #a def to say that I dont understand what your asking for
        puts " Uh, Oh thats a star sign I dont understand, lets try again".colorize(:light_blue)
        list_signs
        end

  def   whats_my_sign
        puts "=" * 65
        puts " Aries".colorize(:light_blue) + " (March 21-April 19)".colorize(:cyan)
        puts " Taurus".colorize(:light_blue) + " (April 20-May 20)".colorize(:cyan)
        puts " Gemini".colorize(:light_blue) + " (May 21-June 20)".colorize(:cyan)
        puts " Cancer".colorize(:light_blue) + " (June 21-July 22)".colorize(:cyan)
        puts " Leo".colorize(:light_blue) + " (July 23-August 22)".colorize(:cyan)
        puts " Virgo".colorize(:light_blue) + " (August 23-September 22)".colorize(:cyan)
        puts " Libra".colorize(:light_blue) + " (September 23-October 22)".colorize(:cyan)
        puts " Scorpio".colorize(:light_blue) + " (October 23-November 21)".colorize(:cyan)
        puts " Sagittarius".colorize(:light_blue) + " (November 22-December 21)".colorize(:cyan)
        puts " Capricorn".colorize(:light_blue) + " (December 22-January 19)".colorize(:cyan)
        puts " Aquarius".colorize(:light_blue) + " (January 20 to February 18)".colorize(:cyan)
        puts " Pisces".colorize(:light_blue) + " (February 19 to March 20)".colorize(:cyan)
        puts "=" * 65
        sleep 5
        list_signs
        end

       # THIS WILL DISPLAY OUT PERSONAL HOROSCOPE OF THE DAY THIS STILL NEEDS WORK
  def     display_sign
          @signs.each.with_index(1) do |sign, i|
            puts "#{i}.".colorize(:cyan)
            puts "Your Horoscope For Today: #{sign.horoscope}".colorize(:light_blue)
            puts ""
          end
          end

        # NOT SURE IF I REALLY NEED THIS METHOD
  def   no_horoscope #a def to say there are no horoscopes currently
        " I'm sorry there aren't currently any horoscopes, please check back tomorrow".colorize(:light_blue)
        say_goodbye
        end

  def   say_goodbye #a def to say goodbye
        puts " Goodbye!".colorize(:light_blue)
        exit
        end

        end #end class
