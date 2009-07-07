require 'rubygems'
require 'test/unit'
require 'shoulda'
require 'rr'

begin
  require 'redgreen'
rescue LoadError
end

$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))
$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'pythagoras'

class Test::Unit::TestCase
  include RR::Adapters::TestUnit
end