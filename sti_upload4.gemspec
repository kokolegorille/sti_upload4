$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "sti_upload4/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "sti_upload4"
  s.version     = StiUpload4::VERSION
  s.authors     = ["Koko le gorille"]
  s.email       = ["koko.le.gorille@gmail.com"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of StiUpload4."
  s.description = "TODO: Description of StiUpload4."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency "rails", "~> 4.2.3"

  s.add_development_dependency "sqlite3"
end
