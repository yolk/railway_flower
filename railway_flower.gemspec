# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "railway_flower/version"

Gem::Specification.new do |s|
  s.name        = "railway_flower"
  s.version     = RailwayFlower::VERSION
  s.authors     = ["Sebastian Munz"]
  s.email       = ["sebastian@yo.lk"]
  s.homepage    = ""
  s.summary     = %q{Jasmine specs in rails 3.1}
  s.description = %q{Jasmine specs in rails 3.1}

  s.rubyforge_project = "railway_flower"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
  
  s.add_dependency "rails", "~> 3.1"
  
  s.add_development_dependency 'rspec',       '>= 2.4.0'
  s.add_development_dependency 'guard-rspec', '>=0.1.9'
  s.add_development_dependency 'rake'
end
