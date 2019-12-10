# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'sigfox_api/version'

Gem::Specification.new do |spec|
  spec.name          = 'sigfox_api'
  spec.version       = SigfoxApi::VERSION
  spec.authors       = ['nightswinger']
  spec.email         = ['stardustkids83@gmail.com']

  spec.summary       = 'Simple API wrapper for Sigfox APIv2'
  spec.description   = 'Ruby client for the Sigfox APIv2.'
  spec.homepage      = 'https://github.com/nightswinger/sigfox-ruby-client'
  spec.license       = 'MIT'

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise 'RubyGems 2.0 or newer is required to protect against ' \
      'public gem pushes.'
  end

  spec.files = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'faraday', '0.17.1'
  spec.add_dependency 'faraday_middleware', '0.13.1'

  spec.add_development_dependency 'bundler', '~> 1.16'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
end