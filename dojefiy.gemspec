# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'dojefiy/version'

Gem::Specification.new do |spec|
  spec.name          = "dojefiy"
  spec.version       = Dojefiy::VERSION
  spec.authors       = ["Jikku Jose"]
  spec.email         = ["jikku+home@qucentis.com"]
  spec.description   = %q{Just a gem to try gem release}
  spec.summary       = %q{An attempt to create a Ruby gem based on Quick Left's tutorial}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "engtagger"
  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end
