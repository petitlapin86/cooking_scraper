require 'open-uri'
require 'nokogiri'

class CookingScraper::Scraper

def self.scrape
  #this is where i will return data
  self.scrape_classes
end


def self.scrape_classes
  classes = []
  #classes << self.scrape_coop
  classes << self.scrape_aries
  classes << self.scrape_taurus
  classes << self.scrape_gemini
  classes << self.scrape_cancer
  classes << self.scrape_leo
  classes << self.scrape_virgo
  classes << self.scrape_libra
  classes << self.scrape_scorpio
  classes << self.scrape_sagittarius
  classes << self.scrape_capricorn
  classes << self.scrape_aquarius
  classes << self.scrape_pisces

  classes
end

#def self.scrape_coop
#doc = Nokogiri::HTML(open("https://www.astrology.com/horoscopes.html",  "Accept-Encoding" => "plain"))
#end

def self.scrape_aries
  doc = Nokogiri::HTML(open("https://www.astrology.com/horoscope/daily/aries.html",  "Accept-Encoding" => "plain"))
  horoscope = doc.search("p").text
end

def self.scrape_taurus
  doc = Nokogiri::HTML(open("https://www.astrology.com/horoscope/daily/taurus.html",  "Accept-Encoding" => "plain"))
  binding.pry
  horoscope = doc.search("p").text
end

def self.scrape_gemini
  doc = Nokogiri::HTML(open("https://www.astrology.com/horoscope/daily/gemini.html",  "Accept-Encoding" => "plain"))
  horoscope = doc.search("p").text
end


def self.scrape_cancer
  doc = Nokogiri::HTML(open("https://www.astrology.com/horoscope/daily/cancer.html",  "Accept-Encoding" => "plain"))
  horoscope = doc.search("p").text
end

def self.scrape_leo
  doc = Nokogiri::HTML(open("https://www.astrology.com/horoscope/daily/leo.html",  "Accept-Encoding" => "plain"))
  horoscope = doc.search("p").text
end

def self.scrape_virgo
  doc = Nokogiri::HTML(open("https://www.astrology.com/horoscope/daily/virgo.html",  "Accept-Encoding" => "plain"))
  horoscope = doc.search("p").text
end

def self.scrape_libra
  doc = Nokogiri::HTML(open("https://www.astrology.com/horoscope/daily/libra.html",  "Accept-Encoding" => "plain"))
  horoscope = doc.search("p").text
end

def self.scrape_scorpio
  doc = Nokogiri::HTML(open("https://www.astrology.com/horoscope/daily/scorpio.html",  "Accept-Encoding" => "plain"))
  horoscope = doc.search("p").text
end

def self.scrape_sagittarius
  doc = Nokogiri::HTML(open("https://www.astrology.com/horoscope/daily/sagittarius.html",  "Accept-Encoding" => "plain"))
  horoscope = doc.search("p").text
end

def self.scrape_capricorn
  doc = Nokogiri::HTML(open("https://www.astrology.com/horoscope/daily/capricorn.html",  "Accept-Encoding" => "plain"))
  horoscope = doc.search("p").text
end

def self.scrape_aquarius
  doc = Nokogiri::HTML(open("https://www.astrology.com/horoscope/daily/aquarius.html",  "Accept-Encoding" => "plain"))
  horoscope = doc.search("p").text
end

def self.scrape_pisces
  doc = Nokogiri::HTML(open("https://www.astrology.com/horoscope/daily/pisces.html",  "Accept-Encoding" => "plain"))
  horoscope = doc.search("p").text
end





  #THIS METHOD NEEDS WORK***********************************************************************
  #def  self.scrape_category(category)
  #     self.scrape.css("div#body div#content.content div.category_#{event_time} .event_list").each do |event|
  #     event.css("tr").collect do |attribute|
  #     self.scrape_category(attribute)
  #     end
  #     end
  #     end

end #end the class
