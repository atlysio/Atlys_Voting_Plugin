$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "atlys_voting/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "atlys_voting"
  s.version     = AtlysVoting::VERSION
  s.authors     = ["hunterlong"]
  s.email       = ["info@socialeck.com"]
  s.homepage    = ""
  s.summary     = "Summary of AtlysVoting."
  s.description = "Description of AtlysVoting."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", ">= 4.2.6", "< 5.1"

end
