# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'Slacker/version'


Gem::Specification.new do |spec|
  spec.name           = 'Slacker'
  spec.version        = Slacker::VERSION
  spec.authors        = ["Vikesh Tiwari"]
  spec.email         = ["tvicky002@gmail.com"]
  spec.summary        = %q{Slacker Slack API Wrapper}
  spec.description    = %q{Simple to use Slack API wrapper to access Slack API client inspired by Slacker in Python}
  spec.homepage       = "https://github.com/vicky002/Slacker"
  spec.files          = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir         = "exe"
  spec.executables    = spec.files.grep(%r{^exe}) { |f| File.basename(f) }
  spec.require_paths  = ["lib"]
  spec.add_development_dependency "bundler", "~> 1.9"
  spec.add_development_dependency 'webmock'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency  'rake'
  spec.add_development_dependency 'rspec-encoding-matchers'
  spec.add_dependency 'json', '>= 1.7.7'
  spec.add_dependency 'httmultiparty'
end









