class CookingScraper::CLI

        def call
       puts "=" * 65
       puts " Cooking is good for the soul, take a look at available classes:".colorize(:light_cyan)
       puts "=" * 65
       list_courses #this will be a method i create
        end


        def list_courses
        puts " Please select which culinary events you would like to see ".colorize(:light_blue)
        puts " enter by number or type 'exit'".colorize(:light_blue)
        puts "  1. Breadmaking Classes".colorize(:light_cyan)
        puts "  2. Dessert Classes".colorize(:light_cyan)
        puts "  3. Savory Classes".colorize(:light_cyan)
        puts "  4. All".colorize(:light_cyan)


        input = gets.strip.downcase

        #if else statement here to define options 1-4.
         if input == "1"
           elsif input == "2"
             elsif input == "3"
                   elsif input == "4"
                      else error

        end
        end #end list courses method

      # a def to display the events ive scraped

      def error #a def to say that I dont understand what your asking for
      puts "Uh, Oh thats a recipe I dont understand,"
      list_courses
      end

      def no_courses #a def to say there are no events currently
      "I'm sorry there aren't currently any cooking classes"
      end

      def goodbye #a def to say goodbye
        puts "Goodbye!"
        exit
      end

end #end class
