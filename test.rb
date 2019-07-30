# example
require 'test/unit'
require './dollar'
require './money'
require './franc'
class DollarTests < Test::Unit::TestCase
  def test_multiplication
    five = Money.dollar(5)
    assert_equal(Money.dollar(10).amount, five.times(2).amount)
    assert_equal(Money.dollar(15).amount, five.times(3).amount)
  end

  def test_equality
    assert_true(Money.dollar(5) == Money.dollar(5))
    assert_false(Money.dollar(5) == Money.dollar(6))
    assert_true(Franc.new(5) == Franc.new(5))
    assert_false(Franc.new(5) == Franc.new(6))
    assert_false(Franc.new(5) == Money.dollar(5))
  end

  def test_franc_multiplication
    five = Franc.new(5)
    assert_equal(Franc.new(10).amount, five.times(2).amount)
    assert_equal(Franc.new(15).amount, five.times(3).amount)
  end
end