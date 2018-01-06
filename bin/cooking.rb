#!/usr/bin/env ruby

require "bundler/setup"
# require "cooking_scraper"
require './lib/cooking_scraper'

CookingScraper::CLI.new.call
