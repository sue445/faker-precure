# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'faker/precure/version'

Gem::Specification.new do |spec|
  spec.name          = "faker-precure"
  spec.version       = Faker::Precure::VERSION
  spec.authors       = ["sue445"]
  spec.email         = ["sue445@sue445.net"]
  spec.summary       = %q{Test data generator using precure}
  spec.description   = %q{Test data generator using precure}
  spec.homepage      = "https://github.com/sue445/faker-precure"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "rubicure", "~> 0.0.5"

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec", "3.0.0.beta2"
  spec.add_development_dependency "yard"
  spec.add_development_dependency "coveralls"
end
