# Load the Rails application.
require_relative 'application'
# require 'dotenv/load'
require "json"
require "http"
require "httparty"

Dotenv.load


# Initialize the Rails application.
Rails.application.initialize!
