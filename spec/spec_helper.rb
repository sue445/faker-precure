if ENV["CI"]
  require 'coveralls'
  Coveralls.wear!
end

# FIXME: NameError: uninitialized constant ActiveSupport::LoggerThreadSafeLevel::Logger when activesupport < 7.1
require "logger"

$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'faker/precure'

# Requires supporting ruby files with custom matchers and macros, etc,
# in spec/support/ and its subdirectories.
Dir["#{File.dirname(__FILE__)}/support/**/*.rb"].each {|f| require f}

