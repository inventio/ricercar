# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Ricercar::Application.initialize!

#configure the sass options
Sass::Plugin.options[:style] = :compact
