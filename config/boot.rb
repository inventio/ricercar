require 'rubygems'

# Set up gems listed in the Gemfile.
gemfile = File.expand_path('../../Gemfile', __FILE__)
begin
  ENV['BUNDLE_GEMFILE'] = gemfile
  require 'bundler'
  Bundler.setup
  #Create the repositories folder and add it to the environment
  repos = '/var/git'
  puts "WARNING: #{repos} does not exist, git related operations will fail. 
     Create it and run `chown #{ENV['USER']} #{repos}`" unless File.directory? repos 

  ENV['GIT_BASE_DIR'] = repos 
rescue Bundler::GemNotFound => e
  STDERR.puts e.message
  STDERR.puts "Try running `bundle install`."
  exit!
end if File.exist?(gemfile)
