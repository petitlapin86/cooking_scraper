class CookingScraper::Classes
  attr_accessor :horoscope, :category, :time
  @@all = []

  def initialize
      @@all << self
      end

  def self.all
      @@all
      end

  def self.clear
      @@all.clear
      end

  def self.find(id)
      self.all[id.to_i-1]
      end

  def self.empty?
      if @@all.empty?
      CookingScraper::CLI.no_horoscope
      end
      end

  def self.create_category(category) #=> "Aries"
      CookingScraper::Scraper.scrape_category(category)
      self.empty?
      end

  end #end class
