class CookingScraper::CLI

        def call
       puts "Cooking is good for the soul, take a look at available classes"
       list_courses #this will be a method i create
        end


        def list_courses
        puts "Please select which culinary events you would like to see or type 'exit'"
        puts "1. Breadmaking Classes"
        puts "2. Dessert Classes"
        puts "3. Savory Classes"
        puts "4. All"


        input = gets.strip.downcase

        #if else statement here to define options 1-4.
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
