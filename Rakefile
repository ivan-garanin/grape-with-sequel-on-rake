Dir.glob('lib/tasks/*.rake').each { |r| load r}

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
  # rake irb_start if you want to be able to work with you project in console in rails c way
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
