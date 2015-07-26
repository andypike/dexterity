# Require this file for feature tests
require_relative "./spec_helper"

require "capybara"
require "capybara/rspec"

module Routing
  def routes
    Web::Routes
  end
end

RSpec.configure do |config|
  config.include RSpec::FeatureExampleGroup

  config.include Capybara::DSL,           :feature => true
  config.include Capybara::RSpecMatchers, :feature => true

  config.include Routing
end
