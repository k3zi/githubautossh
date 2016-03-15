# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'githubautossh/version'

Gem::Specification.new do |spec|
  spec.name          = "githubautossh"
  spec.version       = Githubautossh::VERSION
  spec.authors       = ["Kesi Maduka"]
  spec.email         = ["me@kez.io"]

  spec.summary       = "A helper script to automatically create the proper SSH credentials"
  spec.homepage      = "https://kez.io"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "github_api", "~> 0.13.1"
  spec.add_dependency "net-ssh", "~> 2.9", ">= 2.9.2"
  spec.add_dependency "highline", "~> 1.7", ">= 1.7.8"
  spec.add_dependency "ssh-config", "~> 0.1.3"

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
end
