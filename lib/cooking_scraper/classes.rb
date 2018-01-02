class CookingScraper::Class
attr_accessor :name, :category, :price, :url

def self.today
  #this is will i will return data
  self.scrape_classes
end


def self.scrape_classes
  classes []
  classes <<self.scrape_king_arthur
  classes <<self.scrape_weathersfield
  classes <<self.scrape_coop

  classes
end

def self.scrape_king_arthur
  doc = Nokogiri::HTML(open("https://www.kingarthurflour.com/baking-school/calendar/?mo=012018&cat=3,8,10,11&loc=1"))
end

def self.scrape_weathersfield
  doc = Nokogiri::HTML(open("https://www.weathersfieldinn.com/copy-of-culinary-events"))
end

def self.scrape_coop
  doc = Nokogiri::HTML(open("http://coopfoodstore.com/calendar/month"))
end

end #end the class
