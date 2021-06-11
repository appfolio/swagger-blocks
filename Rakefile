# frozen_string_literal: true

require 'bundler'

begin
  Bundler.setup(:default, :development)
rescue Bundler::BundlerError => e
  warn e.message
  warn 'Run `bundle install` to install missing gems'
  exit e.status_code
end

require 'af_gems'
require 'rspec/core/rake_task'

RSpec::Core::RakeTask.new(:test)

namespace :test do
  AfGems::RubyAppraisalTask.new(:all, ['ruby-2.6.3', 'ruby-2.7.1'])
end

task default: :test
