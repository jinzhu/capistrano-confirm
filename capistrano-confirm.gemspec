# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name        = "capistrano-confirm"
  s.version     = "0.0.1" #Capistrano::Confirm::VERSION
  s.authors     = ["Jinzhu"]
  s.email       = ["wosmvp@gmail.com"]
  s.homepage    = "https://github.com/jinzhu/capistrano-confirm"
  s.summary     = %q{Confirm before deploy}
  s.description = %q{Confirm before deploy}

  s.rubyforge_project = "capistrano-confirm"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
