# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "test_boosters/version"

Gem::Specification.new do |spec|
  spec.name          = "semaphore_test_boosters"
  spec.version       = TestBoosters::VERSION
  spec.authors       = ["MAINTAINER Rendered Text"]
  spec.email         = ["devops@renderedtext.com"]

  spec.summary       = %q{Semaphore job parallelization.}
  spec.description   = %q{Gem for auto-parallelizing builds across Semaphore jobs.}
  spec.homepage      = "https://github.com/renderedtext/test-boosters"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "https://rubygems.org"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "semaphore_cucumber_booster_config", "~> 1.1"

  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "activesupport", "~> 4.0"
  spec.add_development_dependency "cucumber-rails", "~> 1.4.3"

  spec.add_development_dependency "rubocop", "~> 0.47.1"
  spec.add_development_dependency "rubocop-rspec", "~> 1.13.0"
  spec.add_development_dependency "reek", "4.5.6"
  spec.add_development_dependency "simplecov", "~> 0.13"
end
