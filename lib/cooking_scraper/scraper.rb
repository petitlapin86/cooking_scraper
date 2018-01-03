
class CookingScraper::Scraper

def self.scrape
  #this is where i will return data
  self.scrape_classes
end


def self.scrape_classes
  classes = []
  classes << self.scrape_king_arthur
  #classes << self.scrape_weathersfield
  #classes << self.scrape_coop

  classes
end

def self.scrape_king_arthur
  doc = Nokogiri::HTML(open("https://www.kingarthurflour.com/baking-school/calendar/?mo=012018&cat=3,8,10,11&loc=1"))
   binding.pry
end

# ILL ADD THESE IN ONCE I SUCCESSFULLY SCRAPE KING ARTHUR *************************************
#def self.scrape_weathersfield
#  doc = Nokogiri::HTML(open("https://www.weathersfieldinn.com/copy-of-culinary-events"))
#end

#def self.scrape_coop
#  doc = Nokogiri::HTML(open("http://coopfoodstore.com/calendar/month"))
#end

  #THIS METHOD NEEDS WORK***********************************************************************
  def  self.scrape_category(category)
       self.scrape.css("div#body div#content.content div.category_#{event_time} .event_list").each do |event|
       event.css("tr").collect do |attribute|
       self.scrape_category(attribute)
       end
       end
       end

end #end the class
