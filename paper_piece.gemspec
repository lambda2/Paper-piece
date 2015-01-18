# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name        = "paper_piece"
  s.version     = "0.0.1"
  s.email       = "andre.aubin@lambdaweb.fr"
  s.homepage    = "https://github.com/lambda2/paper_piece"
  s.summary     = "A simple word linking library"
  s.description = "A simple word linking library"
  s.author      = "André Aubin"
  s.license     = "Apache2"

  s.files         = Dir["{lib}/**/*", "[A-Z]*.md"]
  s.test_files    = Dir["test/**/*.rb"]
  s.require_paths = ["lib"]

  s.required_rubygems_version = ">= 1.3.4"
end