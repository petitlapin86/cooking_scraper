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
#a def to say that I dont understand what your asking for
#a def to say there are no events currently
#a def to say goodbye

end #end class 
