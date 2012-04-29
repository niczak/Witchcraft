# Add the directory for config.ru to the load path
$LOAD_PATH << File.expand_path(File.dirname(__FILE__))

require "rubygems"
require "bundler/setup"

# Use the Gemfile to require gems
Bundler.require(:default)

# Require the main Sinatra application
require "application"

# Map the URLS to Sinatra applications
run Rack::URLMap.new(
  "/"       => Application,
  "/users"  => Users
)