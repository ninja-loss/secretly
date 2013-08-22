# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'secretly/version'

Gem::Specification.new do |spec|
  spec.name          = "secretly"
  spec.version       = Secretly::VERSION
  spec.authors       = ["C. Jason Harrelson (midas)"]
  spec.email         = ["jason@lookfarwardenterprises.com"]
  spec.description   = %q{Store secrets for usage in your Ruby or Rails projects. Store anywhere you like on the file system, or in environment variables.}
  spec.summary       = %q{Store secrets for usage in your Ruby or Rails projects.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
