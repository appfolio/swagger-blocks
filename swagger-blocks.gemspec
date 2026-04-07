# frozen_string_literal: true

require_relative 'lib/swagger/blocks/version'

Gem::Specification.new do |spec|
  spec.name          = 'swagger-blocks'
  spec.version       = Swagger::Blocks::VERSION
  spec.platform      = Gem::Platform::RUBY
  spec.author        = 'AppFolio'
  spec.email         = 'dev@appfolio.com'
  spec.description   = 'Define and serve live-updating Swagger JSON for Ruby apps.'
  spec.summary       = spec.description
  spec.homepage      = 'https://github.com/appfolio/swagger-blocks'
  spec.license       = 'Nonstandard'
  spec.files         = Dir['**/*'].select { |f| f[%r{^(lib/|Gemfile$|Rakefile|README.md|swagger\-blocks\.gemspec)}] }
  spec.require_paths = ['lib']
  spec.required_ruby_version = Gem::Requirement.new('< 4.1')

  spec.metadata['allowed_push_host'] = 'https://rubygems.pkg.github.com/appfolio'
end
