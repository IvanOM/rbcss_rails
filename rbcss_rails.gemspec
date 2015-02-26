$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "rbcss_rails/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "rbcss_rails"
  s.version     = RbcssRails::VERSION
  s.authors     = ["Ivan Oliveira Morais"]
  s.email       = ["ivan.eng.controle@gmail.com"]
  s.homepage    = "https://github.com/ivanom/rbcss_rails.git"
  s.summary     = "This is a Rails assets preprocessor for rbcss."
  s.description = "This gem implements a sprockets preprocessor that allows yout to write stylesheets for Rails using RBCSS gem."

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency "rails"
  s.add_dependency "rbcss"

  s.add_development_dependency "sqlite3"
  s.add_development_dependency "rspec-rails"
  s.add_development_dependency "factory_girl_rails"
end
