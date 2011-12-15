# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "capistrano/version"

Gem::Specification.new do |s|
  s.name        = "capistrano-confirm"
  s.version     = CapistranoConfirm::VERSION
  s.authors     = ["Jinzhu"]
  s.email       = ["wosmvp@gmail.com"]
  s.homepage    = "https://github.com/jinzhu/capistrano-confirm"
  s.summary     = %q{Confirm before deploy}
  s.description = %q{Confirm before deploy,
                     Make sure you are not deploying the wrong branch, and remind you should deploy it after code review!
                     Please use it, because I write it after deployed a wrong branch to our production server! ;(
                    }

  s.rubyforge_project = "capistrano-confirm"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
