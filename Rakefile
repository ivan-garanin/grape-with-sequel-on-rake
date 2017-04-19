Dir.glob('lib/tasks/*.rake').each { |r| load r}

require 'rubygems'
require 'bundler/setup'

require 'irb'
require 'rake'

# require 'rspec/core'
# require 'rspec/core/rake_task'

# RSpec::Core::RakeTask.new(:spec)

task :environment do
  ENV['RACK_ENV'] ||= 'development'
  require File.expand_path('../config/environment', __FILE__)
end

task :irb_start => [:environment] do
  ARGV.clear
  IRB.start
end

task routes: :environment do
  API.routes.each do |route|
    method = route.request_method.ljust(10)
    path = route.origin
    puts "     #{method} #{path}"
  end
end

# require 'rubocop/rake_task'
# RuboCop::RakeTask.new(:rubocop)

task default: [:spec]
