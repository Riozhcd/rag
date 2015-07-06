require 'simplecov'
SimpleCov.start do
  add_filter "/spec/"
end

RSpec.configure do |c|
  c.filter_run_excluding :sandbox => true
  # c.raise_errors_for_deprecations!
  c.filter_run_including :focus => true
  c.filter_run_excluding :slow => true
  c.run_all_when_everything_filtered = true
end

require 'grader'
require 'auto_grader'
require 'graders/rspec_grader/rspec_grader'
require 'graders/rspec_grader/weighted_rspec_grader'
require 'graders/rspec_grader/rspec_runner'
require "graders/rspec_grader/github_rspec_grader"

require 'base64'
require 'json'

require 'adapter'
require 'submission/xqueue.rb'

require 'fakeweb'

FakeWeb.allow_net_connect = false 