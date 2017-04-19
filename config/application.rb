$:.unshift(File.join(File.dirname(__FILE__), '..', 'app'))
$:.unshift(File.join(File.dirname(__FILE__), '..', 'api'))
$:.unshift(File.dirname(__FILE__))

require 'boot'

Bundler.require :default, ENV['RACK_ENV']

require 'database'

Dir[File.expand_path('../../api/helpers/*.rb', __FILE__)].each do |f|
  require_relative f
end

require File.expand_path('../../api/base.rb', __FILE__)

Dir[File.expand_path('../../app/models/*.rb', __FILE__)].each do |f|
  require_relative f
end

Dir[File.expand_path('../../api/*.rb', __FILE__)].each do |f|
  require_relative f
end

require 'api'
require 'app'