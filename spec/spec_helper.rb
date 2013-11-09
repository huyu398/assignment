require 'rspec'

root_path = File.expand_path(File.dirname(__FILE__) + '/..')
Dir["#{root_path}/lib/**/*.rb"].each { |f| require f }
