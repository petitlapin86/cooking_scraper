#!/usr/bin/env ruby

require "bundler/setup"
#require "horoscope_scraper"
require './lib/horoscope_scraper'

HoroscopeScraper::CLI.new.call
