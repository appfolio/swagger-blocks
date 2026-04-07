# frozen_string_literal: true

require 'af_gems/test/bundler_test_helper'
require 'af_gems/test/simplecov_test_helper'

RSpec.configure do |config|
  config.default_formatter = 'doc' if config.files_to_run.one?
  config.order = :random
  Kernel.srand config.seed

  config.expect_with :rspec do |expectations|
    expectations.syntax = :expect
  end

  config.mock_with :rspec do |mocks|
    mocks.syntax = :expect
    mocks.verify_partial_doubles = true
  end
end
