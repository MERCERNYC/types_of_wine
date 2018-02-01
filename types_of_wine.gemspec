
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "types_of_wine/version"

Gem::Specification.new do |spec|
  spec.name          = "types_of_wine"
  spec.version       = TypesOfWine::VERSION
  spec.authors       = ["'Juliana Fogg'"]
  spec.email         = ["'julianafogg@gmail.com'"]

  spec.summary       = %q{Scraper for the most popular wine varieties.}
  spec.description   = %q{Types of wine gem lists wines spelling, description, taste, style and food pairing.}
  spec.homepage      = "https://github.com/MERCERNYC/types_of_wine_cli_app"
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
  spec.add_development_dependency 'pry', '~> 0'

  spec.add_dependency 'nokogiri', '~> 1.6', '>= 1.6.8'
  spec.add_dependency 'colorize', '~> 0.8.1'

end
