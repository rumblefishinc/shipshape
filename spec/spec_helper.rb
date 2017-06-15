# frozen_string_literal: true

require 'bundler/setup'
require 'shipshape'
require 'simplecov'

SimpleCov.start do
  minimum_coverage 100
  refuse_coverage_drop

  formatter SimpleCov::Formatter::MultiFormatter.new [SimpleCov::Formatter::HTMLFormatter]
end

RSpec.configure do |config|
  # Enable flags like --only-failures and --next-failure
  config.example_status_persistence_file_path = '.rspec_status'

  config.expect_with :rspec do |c|
    c.syntax = :expect
  end
end
