require 'rspec'

ROOT_PATH = File.expand_path(File.dirname(__FILE__) + '/..')
def require_ruby(filename)
  only_filename = filename.gsub(/^([^\.]*)\.rb/, '\1')

  require "#{ROOT_PATH}/lib/#{filename}"
  Dir["#{ROOT_PATH}/lib/#{only_filename}/**/*.rb"].each { |f| require f }
end
