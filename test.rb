# example
require 'test/unit'
require './dollar'

class DollarTests < Test::Unit::TestCase
  def test_multiplication()
    five = Dollar.new(5)
    five.times(2)
    assert_equal(10, five.amount)
  end
end