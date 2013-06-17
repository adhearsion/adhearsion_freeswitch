# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "adhearsion_freeswitch/version"

Gem::Specification.new do |s|
  s.name        = "adhearsion_freeswitch"
  s.version     = AdhearsionFreeswitch::VERSION
  s.authors     = ["Ben Langfeld"]
  s.email       = ["ben@langfeld.me"]
  s.homepage    = "https://github.com/adhearsion/adhearsion_freeswitch"
  s.summary     = %q{FreeSWITCH platform-specific features for Adhearsion}
  s.description = %q{FreeSWITCH platform-specific features for Adhearsion via Inbound Event Socket}

  s.rubyforge_project = "adhearsion_freeswitch"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.require_paths = ["lib"]

  s.add_runtime_dependency %q<adhearsion>, ["~> 2.3"]

  s.add_development_dependency %q<bundler>, ["~> 1.0"]
  s.add_development_dependency %q<rspec>, ["~> 2.8"]
  s.add_development_dependency %q<rake>, [">= 0"]
  s.add_development_dependency %q<guard-rspec>
 end
