# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'magic/proxy/version'

Gem::Specification.new do |spec|
  spec.name          = "magic-proxy"
  spec.version       = Magic::Proxy::VERSION
  spec.authors       = ["David Hudson"]
  spec.email         = ["jendave.hudson@gmail.com"]
  spec.summary       = %q{Creates proxies for Magic: the Gathering.}
  spec.description   = %q{Creates proxies for cards and tokens for Magic: the Gathering.}
  spec.homepage      = "https://github.com/jendave/magic-proxy"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake", "~> 0"
end
