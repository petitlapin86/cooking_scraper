
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "cooking_scraper/version"

Gem::Specification.new do |spec|
  spec.name          = "cooking_scraper"
  spec.version       = CookingScraper::VERSION
  spec.authors       = ["'Paige Jones'"]
  spec.email         = ["'skinnerpa86@yahoo.com'"]

  spec.summary       = %q{This is a gem to help find local Upper Valley cooking classes.}
  spec.homepage      = "http://rubygems.org/gems/cooking_scraper"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  #adding in pry and nokogiri
  spec.add_development_dependency "pry"
  spec.add_dependency "nokogiri"
end
