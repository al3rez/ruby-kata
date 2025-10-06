require 'test/unit/assertions'
include Test::Unit::Assertions

def it(description, expected, actual)
  print "#{description}... "
  assert_equal expected, actual
  puts "✓"
end
