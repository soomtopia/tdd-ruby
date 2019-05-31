# example
require 'test/unit'
require './dollar'

class DollarTests < Test::Unit::TestCase
  def test_multiplication()
    five = Dollar.new(5)
    product = five.times(2)
    assert_equal(Dollar.new(10).amount, product.amount)
    product = five.times(3)
    assert_equal(Dollar.new(15).amount, product.amount)
  end

  def test_equality
    assert_true(Dollar.new(5) == Dollar.new(5))
    assert_false(Dollar.new(5) == Dollar.new(6))
  end
end