$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "komachi_concerned_with/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "komachi_concerned_with"
  s.version     = KomachiConcernedWith::VERSION
  s.authors     = ["Takumi MIURA"]
  s.email       = ["mitaku1104@gmail.com"]
  s.homepage    = "https://github.com/mitaku/komachi_concerned_with"
  s.summary     = "concerned with modules"
  s.description = "KomachiConcernedWith is module include helper"

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency "rails", "~> 3.2"
  # s.add_dependency "jquery-rails"

  s.add_development_dependency "sqlite3"
end
