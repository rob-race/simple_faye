# -*- encoding: utf-8 -*-
require File.expand_path('../lib/simple_faye/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Rob Race"]
  gem.email         = ["rob.race@me.com"]
  gem.description   = %q{Simple Faye pub/sub gem}
  gem.summary       = %q{Simple extraction bare minimum methods and helpers to get a Faye pub/sub}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "simple_faye"
  gem.require_paths = ["lib"]
  gem.version       = SimpleFaye::VERSION
  
  gem.add_dependency 'faye'
  gem.add_dependency 'thin'
end
