# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'test_gem/version'

Gem::Specification.new do |spec|
  spec.name          = "test_gem"
  spec.version       = TestGem::VERSION
  spec.authors       = ["Jarvis"]
  spec.email         = ["Write your email address"]
  spec.summary       = %q{FizzBuzz test gem}
  spec.description   = %q{A gem that contains the logic for the FizzBuzz program}
  spec.homepage      = "https://github.com/jarvisan/test_gem"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake", "~> 0"
  spec.add_runtime_dependency "json", "~> 0"
end
