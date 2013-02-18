# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'not_magic/version'

Gem::Specification.new do |gem|
  gem.name          = "not_magic"
  gem.version       = NotMagic::VERSION
  gem.authors       = ["Mason Fischer"]
  gem.email         = ["mason@thoughtbot.com"]
  gem.description   = %q{Adds 'not_' prepended versions of all boolean methods for use instead of the ! operator.}
  gem.summary       = %q{Adds 'not_' prepended versions of all boolean methods for use instead of the ! operator.}
  gem.homepage      = ""

  gem.add_development_dependency 'rake'
  gem.add_development_dependency 'rspec'

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
