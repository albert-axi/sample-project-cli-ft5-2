# frozen_string_literal: true
require "open-uri"
require "nokogiri"
require_relative "sample_project/course.rb"
require_relative "sample_project/scraper.rb"
require_relative "sample_project/cli.rb"
require_relative "sample_project/version"

module SampleProject
  class Error < StandardError; end
  # Your code goes here...
end
